# Converts an image to a base-64-encoded string for inclusion
# in a markdown Login Ad.
# Use like so:
# .\Convert-ToBase64.ps1 C:\Path\To\Image.png >> base64.txt
Param([String]$path)
[convert]::ToBase64String([System.IO.File]::ReadAllBytes($path))