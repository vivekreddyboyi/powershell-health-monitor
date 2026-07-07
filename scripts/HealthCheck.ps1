# ==========================================
# PowerShell Health Monitor
# Author: Vivek Reddy Boyi
# ==========================================

Write-Host ""
Write-Host "==========================================="
Write-Host " Windows Service Health Monitor"
Write-Host "==========================================="
Write-Host ""

$Report = Get-Service |
Select-Object Name, DisplayName, Status

$Report | Format-Table -AutoSize

$Report | Export-Csv `
-Path "HealthReport.csv" `
-NoTypeInformation

Write-Host ""
Write-Host "Health report exported to HealthReport.csv"
Write-Host ""
