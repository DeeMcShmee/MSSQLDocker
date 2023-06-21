#Install PSWindowsUpdate
Install-module PSWindowsUpdate -force

# To install hyper-V if you're dealing with a VM
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Good old windows update
Get-WindowsUpdate -AcceptAll -Install -AutoReboot





