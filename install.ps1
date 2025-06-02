$zipUrl = "https://github.com/rustdesk/rustdesk/releases/latest/download/rustdesk-1.2.3-windows.zip"
$output = "$env:TEMP\rustdesk.zip"
$dest = "$env:TEMP\rustdesk"

Invoke-WebRequest -Uri $zipUrl -OutFile $output
Expand-Archive -Path $output -DestinationPath $dest -Force
Start-Process "$dest\rustdesk.exe"
