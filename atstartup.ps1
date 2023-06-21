wsl --update

Start-Sleep -S 120

$app = (get-command ubuntu.exe).path

Start-Process -FilePath "$app"
