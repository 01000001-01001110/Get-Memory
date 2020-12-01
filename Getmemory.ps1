<# 
Title: Local Computer System Information
By: Alan Newingham
Date: 11/28/2020
Git: 
Notes: Written for https://github.com/01000001-01001110/SystemInfo
#>

$RAM = Get-CimInstance -Query "SELECT TotalVisibleMemorySize, FreePhysicalMemory FROM Win32_OperatingSystem"

$totalRAM = [math]::Round($RAM.TotalVisibleMemorySize/1MB, 2)
$freeRAM = [math]::Round($RAM.FreePhysicalMemory/1MB, 2)
$usedRAM = [math]::Round(($RAM.TotalVisibleMemorySize - $RAM.FreePhysicalMemory)/1MB, 2)

Write-Host "Total Memory: $totalRAM"
Write-Host "Used Memory: $usedRAM"
Write-Host "Free Memory: $freeRAM"
