@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator @Jalandhar /add >nul
net localgroup administrators administrator /add >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo User: Administrator
echo Pass: @Jalandhar
curl -O https://raw.githubusercontent.com/jalandhar792/windows/main/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/7zxa.dll > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Default.SFX > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Default64.SFX > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Descript.ion > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/License.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Order.htm > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Rar.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Rar.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/RarExt.dll > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/RarExt32.dll > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/RarExt32.dll > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/ReadMe.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/UnRAR.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Uninstall.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Uninstall.lst > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/WhatsNew.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/WinCon.SFX > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/WinCon64.SFX > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/WinRAR.chm > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/WinRAR.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Zip.SFX > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/Zip64.SFX > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/rarnew.dat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\WinRAR/" https://raw.githubusercontent.com/jalandhar792/windows/main/Files/WinRAR/WinRAR/zipnew.dat > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul
