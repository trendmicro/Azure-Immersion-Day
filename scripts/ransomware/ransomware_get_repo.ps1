[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Set-MpPreference -DisableRealtimeMonitoring $true
$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0
cd\
cd C:\Users\aiwadmin\Desktop
git clone https://github.com/NextronSystems/ransomware-simulator.git
Invoke-WebRequest -Uri https://raw.githubusercontent.com/trendmicro/Azure-Immersion-Day/main/scripts/ransomware/quickbuck.exe -OutFile .\quickbuck.exe -UseBasicParsing
