# Tac gia: Mạnh Hào
# Ngay tao: HOAN_THIEN
Write-Host "Dang loc log...""=== BAO CAO LOI ===" > logs/auto_report.txt
Get-Content logs/shop.log | Select-String "ERROR" >> logs/auto_report.txt
Write-Host "Hoan thanh!"