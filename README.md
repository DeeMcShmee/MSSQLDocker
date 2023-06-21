# MSSQLDocker
In WSL Win Svr 2022

Here's a breakdown of how I got mssql working in a docker container in wsl(Ubuntu) on windows server 2022 in VMWare

First, install Win Server 2022

After run this script in powershell to install update the system and install hyper-v:
#Install.ps1

When done, we need to install the distro wanted (I used Ubuntu by default)
#wsl.ps1

Once Ubuntu has loaded, we need to make sure that systemd is loaded at boot
So whe need to create a file called wsl.conf in /etc with this inside
[Boot]
systemd=true

Need to update && upgrade Ubuntu and add Docker to the mix
#thelinuxside

In the meantime, you can download ssms from the microsoft website if you want to manage the database with it( It's free )
https://aka.ms/ssmsfullsetup

#When it's all said and done, here's what worked for me to log in ssms \n
127.0.0.1\{Container Name},port used aka 1433 \n
user = sa \n
pw=the password you used in the docker setup \n

![image](https://github.com/DeeMcShmee/MSSQLDocker/assets/95409489/9780623e-e63d-4596-9360-9f06a0ff4f13)

