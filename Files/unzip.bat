@echo off
:: This file to Unzip a file

echo "Unzipping file..."
PowerShell -Command "Expand-Archive WinRAR.zip -DestinationPath C:\Users\Public\Desktop"
echo "Done!"
pause