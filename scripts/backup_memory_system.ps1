param(
    [string]$SourceRoot = "D:\个人\AI学习\记忆系统",
    [string]$BackupRoot = "E:\个人\AI学习\记忆系统",
    [string]$LogRoot = "E:\个人\AI学习\记忆系统\_backup_logs"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $SourceRoot)) {
    throw "Source root not found: $SourceRoot"
}

$backupParent = Split-Path -Path $BackupRoot -Parent
New-Item -ItemType Directory -Force -Path $backupParent | Out-Null
New-Item -ItemType Directory -Force -Path $BackupRoot | Out-Null
New-Item -ItemType Directory -Force -Path $LogRoot | Out-Null

$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $LogRoot "backup-$stamp.log"

$args = @(
    $SourceRoot,
    $BackupRoot,
    "/MIR",
    "/COPY:DAT",
    "/DCOPY:DAT",
    "/XJ",
    "/R:2",
    "/W:5",
    "/MT:8",
    "/NFL",
    "/NDL",
    "/NP",
    "/LOG:$logFile"
)

$proc = Start-Process -FilePath "robocopy.exe" -ArgumentList $args -Wait -PassThru -NoNewWindow

if ($proc.ExitCode -ge 8) {
    throw "Robocopy failed with exit code $($proc.ExitCode). See log: $logFile"
}

Write-Host "Backup completed."
Write-Host "Source: $SourceRoot"
Write-Host "Backup: $BackupRoot"
Write-Host "Log:    $logFile"
