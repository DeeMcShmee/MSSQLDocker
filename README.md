# MSSQLDocker
In WSL Win Svr 2022

Here's a breakdown of how I got mssql working in a docker container in wsl(Ubuntu) on windows server 2022

First, install Win Server 2022

After run this script in powershell to install update the system and install hyper-v:
#Install.ps1

When done, we need to install the distro wanted (I used Ubuntu by default)
#wsl.ps1

Need to update && upgrade Ubuntu and add Docker to the mix
#thelinuxside
