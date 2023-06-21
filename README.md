# MSSQLDocker
In WSL Win Svr 2022

Here's a breakdown of how I got mssql working in a docker container in wsl on windows server 2022

First, install Win Server 2022

After run this command in powershell to install hyper-V and to update the system:
  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
  Get-WindowsUpdate -AcceptAll -Install -AutoReboot

