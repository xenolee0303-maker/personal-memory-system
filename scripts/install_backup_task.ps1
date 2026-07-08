param(
    [string]$ScriptPath = "C:\Users\issuser\Documents\Codex\memory-system-backup\scripts\backup_memory_system.ps1",
    [string]$TaskName = "Personal Memory System Backup",
    [string]$DailyTime = "02:30"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $ScriptPath)) {
    throw "Backup script not found: $ScriptPath"
}

$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-NoProfile -ExecutionPolicy Bypass -File `"$ScriptPath`""
$trigger = New-ScheduledTaskTrigger -Daily -At ([datetime]::ParseExact($DailyTime, "HH:mm", $null))
$principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME -LogonType Interactive -RunLevel Limited
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

$task = New-ScheduledTask -Action $action -Trigger $trigger -Principal $principal -Settings $settings
Register-ScheduledTask -TaskName $TaskName -InputObject $task -Force | Out-Null

Write-Host "Scheduled task installed: $TaskName"
Write-Host "Time: $DailyTime"
Write-Host "Script: $ScriptPath"
