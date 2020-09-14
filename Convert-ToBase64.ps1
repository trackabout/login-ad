# Use like so:
# .\ImageToBase64.ps1 C:\Path\To\Image.png >> base64.txt
Param([String]$path)
[convert]::ToBase64String([System.IO.File]::ReadAllBytes($path))