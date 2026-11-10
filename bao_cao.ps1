
# Script: tong_hop.ps1
# Tac gia: Sinh vien
# Ngay tao: 2026-11-11

Write-Host "Dang tao bao cao..."

"=== BAO CAO VAN HANH MODEL AI ===" > .\logs\tong_hop.txt

Get-Content .\logs\inference.log | Select-String "WARNING" | ForEach-Object { $_.Line } >> .\logs\tong_hop.txt

(Get-Content .\logs\inference.log | Select-String "ERROR").Count >> .\logs\tong_hop.txt

Write-Host "Hoan thanh!"
