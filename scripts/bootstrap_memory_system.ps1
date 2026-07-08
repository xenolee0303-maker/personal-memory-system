param(
    [string]$MemoryRoot = "C:\MemorySystem",
    [string]$VaultRoot = "C:\ObsidianVault"
)

$ErrorActionPreference = 'Stop'

$dirs = @(
    (Join-Path $MemoryRoot 'Intent'),
    (Join-Path $MemoryRoot 'Memory'),
    (Join-Path $MemoryRoot 'Meta'),
    (Join-Path $MemoryRoot 'Agents\子木'),
    (Join-Path $MemoryRoot 'Config'),
    (Join-Path $MemoryRoot 'Templates'),
    (Join-Path $MemoryRoot 'Scripts'),
    (Join-Path $VaultRoot '05_日记与待办\日记'),
    (Join-Path $VaultRoot '06_知识编译'),
    (Join-Path $VaultRoot '07 商情知识仓库'),
    (Join-Path $VaultRoot '08_网页剪藏'),
    (Join-Path $VaultRoot '90_资源素材库')
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
}

Write-Host "Created memory system skeleton at: $MemoryRoot"
Write-Host "Created vault skeleton at: $VaultRoot"
