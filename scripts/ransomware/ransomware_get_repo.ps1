[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y git -Wait
$Env:Path += ";C:\Program Files\Git\cmd"
choco install -y go -Wait
choco install -y make -Wait
Set-MpPreference -DisableRealtimeMonitoring $true
$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0
$Env:Path += ';C:\ProgramData\chocolatey\bin\'
$Env:GIT_REDIRECT_STDERR = '2>&1'
cd\
cd C:\Users\aiwadmin\Desktop
git clone https://github.com/NextronSystems/ransomware-simulator.git
Invoke-WebRequest -Uri https://github.com/trendmicro/Azure-Immersion-Day/raw/main/scripts/ransomware/quickbuck.exe -OutFile .\quickbuck.exe -UseBasicParsing
