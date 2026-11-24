param([ValidateSet('prepare','run')][string]$Mode = 'prepare')
$ErrorActionPreference = 'Stop'
$runRoot = Join-Path $PSScriptRoot 'week-06-lokaal'
$utf8 = [Text.UTF8Encoding]::new($false)
$null = New-Item -ItemType Directory -Force -Path $runRoot
$prompt = [IO.File]::ReadAllText((Join-Path $PSScriptRoot 'prompt.md'))
$source = [IO.File]::ReadAllText((Join-Path $runRoot 'catalogus-volledige-tekst.txt'))
# Word table-cell controls become separators; no facts are added or removed.
$source = $source.Replace([string][char]7, ' | ')
$test = [IO.File]::ReadAllText((Join-Path $PSScriptRoot 'test-set-bron.md'))
$questions = @()
foreach ($line in ($test -split '\r?\n')) {
 if ($line -match '^\| (B0[1-5]) \|') {
  $cells = $line.Split('|')
  $questions += [pscustomobject]@{id=$cells[1].Trim();question=$cells[2].Trim()}
 }
}
if ($questions.Count -ne 5) { throw 'Verwacht exact B01-B05.' }
foreach ($case in $questions) {
 $work = Join-Path $runRoot $case.id
 $null = New-Item -ItemType Directory -Force -Path $work
 $payload = $prompt + "`n`n## Bron voor deze afzonderlijke sessie`nDe volledige tekst van de lokale pdf is hieronder automatisch met Word uitgelezen. Tabelcellen zijn gescheiden met |. Gebruik deze broninhoud als het bijgevoegde document; de pdf hoeft niet opnieuw geopend te worden. De gedrukte cataloguspaginanummers staan in de tekst. De originele pdf telt 13 pagina's: omslag = pdf-pagina 1; gedrukte pagina's 2-3 = pdf-pagina 2, 4-5 = pdf-pagina 3, enzovoort; achteromslag = pdf-pagina 13. Gebruik alleen verifieerbare bronplaatsen. De transcriptie bevat geen verwachte testantwoorden.`n`nBEGIN DOCUMENT wentronic-lapp-emobility-2025.pdf`n" + $source + "`nEND DOCUMENT`n`n## Vraag voor deze sessie`n" + $case.question + "`n`nBeantwoord uitsluitend deze vraag volgens de prompt. Gebruik geen tools, andere bestanden, internet of eerdere sessies."
 [IO.File]::WriteAllText((Join-Path $work 'input.txt'),$payload,$utf8)
}
if ($Mode -eq 'prepare') { Write-Output 'Vijf aparte invoeren voorbereid: alleen prompt, volledige brontekst en eigen vraag.'; exit }
$codexExe = (Get-Command codex.exe).Source
foreach ($case in $questions) {
 $work = Join-Path $runRoot $case.id
 $metaPath = Join-Path $work 'meta.json'
 if (Test-Path -LiteralPath $metaPath) {
  $prior = [IO.File]::ReadAllText($metaPath) | ConvertFrom-Json
  if ($prior.exit_code -eq 0) { Write-Output ('Bestaand resultaat: ' + $case.id); continue }
 }
 $psi = [Diagnostics.ProcessStartInfo]::new()
 $psi.FileName = $codexExe
 $psi.WorkingDirectory = $work
 $psi.Arguments = 'exec --ignore-user-config --ephemeral --skip-git-repo-check --json --color never -s read-only --disable shell_tool -c features.apply_patch_freeform=false -c features.multi_agent=false -c features.apps=false -c web_search="disabled" -c project_doc_max_bytes=0 -'
 $psi.UseShellExecute = $false
 $psi.CreateNoWindow = $true
 $psi.RedirectStandardInput = $true
 $psi.RedirectStandardOutput = $true
 $psi.RedirectStandardError = $true
 $psi.StandardOutputEncoding = $utf8
 $psi.StandardErrorEncoding = $utf8
 $process = [Diagnostics.Process]::new()
 $process.StartInfo = $psi
 $started = [DateTime]::UtcNow
 $null = $process.Start()
 $stdout = $process.StandardOutput.ReadToEndAsync()
 $stderr = $process.StandardError.ReadToEndAsync()
 $writer = [IO.StreamWriter]::new($process.StandardInput.BaseStream,$utf8)
 $writer.Write([IO.File]::ReadAllText((Join-Path $work 'input.txt')))
 $writer.Dispose()
 Write-Output ('Gestart: ' + $case.id + ' in een nieuwe tijdelijke sessie')
 while (-not $process.WaitForExit(1000)) {
  if (([DateTime]::UtcNow-$started).TotalSeconds -gt 240) { $process.Kill(); throw ('Tijdslimiet ' + $case.id) }
 }
 $raw = $stdout.GetAwaiter().GetResult()
 $err = $stderr.GetAwaiter().GetResult()
 [IO.File]::WriteAllText((Join-Path $work 'events.jsonl'),$raw,$utf8)
 [IO.File]::WriteAllText((Join-Path $work 'stderr.txt'),$err,$utf8)
 $meta = [ordered]@{id=$case.id;exit_code=$process.ExitCode;started_utc=$started.ToString('o');seconds=([DateTime]::UtcNow-$started).TotalSeconds;model_selection='Codex CLI default; no model override';source_sha256=(Get-FileHash (Join-Path $PSScriptRoot 'bronnen/wentronic-lapp-emobility-2025.pdf') -Algorithm SHA256).Hash;prompt_sha256=(Get-FileHash (Join-Path $PSScriptRoot 'prompt.md') -Algorithm SHA256).Hash}
 [IO.File]::WriteAllText($metaPath,($meta | ConvertTo-Json),$utf8)
 Write-Output ('Afgerond: ' + $case.id + ', exit ' + $process.ExitCode)
 $process.Dispose()
 if ($meta.exit_code -ne 0) { Write-Output ($err.Substring(0,[Math]::Min(1000,$err.Length))); throw ('Run mislukt: ' + $case.id) }
}
