@echo off
set "url=https://github.com/rustdesk/rustdesk/releases/latest/download/rustdesk-1.2.3-windows.zip"
set "zip=%TEMP%\rustdesk.zip"
set "dir=%TEMP%\rustdesk"

curl -L %url% -o %zip%
powershell -Command "Expand-Archive -Path '%zip%' -DestinationPath '%dir%' -Force"
start "" "%dir%\rustdesk.exe"
