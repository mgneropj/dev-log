$Date = Get-Date -Format "yyyy-MM-dd"
$LogsDir = Join-Path $PSScriptRoot "..\logs"
$File = Join-Path $LogsDir "$Date.md"

New-Item -ItemType Directory -Force -Path $LogsDir | Out-Null

if (Test-Path $File) {
    Write-Host "Log already exists: $File"
    exit 0
}

@(
    "# Dev Log — $Date",
    "",
    "## What I learned today",
    "",
    "",
    "## What I built / practiced",
    "",
    "",
    "## Notes",
    "",
    ""
) | Set-Content -Path $File -Encoding UTF8

Write-Host "Created $File"
Write-Host "Edit the file, then: git add . && git commit -m `"log: $Date`" && git push"
