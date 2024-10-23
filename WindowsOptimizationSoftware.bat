@echo off
@echo Windows Optimization Software 1.0
@echo.
:: Verified that the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo I run the script again as administrator...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

echo :: Adding entries to the registry...

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis1" /t REG_SZ /d "Wartość1" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis2" /t REG_SZ /d "Wartość2" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis3" /t REG_SZ /d "Wartość3" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis4" /t REG_SZ /d "Wartość4" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis5" /t REG_SZ /d "Wartość5" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis6" /t REG_SZ /d "Wartość6" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis7" /t REG_SZ /d "Wartość7" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis8" /t REG_SZ /d "Wartość8" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis9" /t REG_SZ /d "Wartość9" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis10" /t REG_SZ /d "Wartość10" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis11" /t REG_SZ /d "Wartość11" /f

reg add "HKEY_LOCAL_MACHINE\Software\MojaAplikacja" /v "Wpis12" /t REG_SZ /d "Wartość12" /f

Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Application Name" /t REG_SZ /d "csgo.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\CSGO" /v "Throttle Rate" /t REG_SZ /d "-1" /f

echo :: Entries added successfully!

@echo.
@echo Disable HPET
bcdedit /deletevalue useplatformclock
@echo.
@echo Disable dynamic tick (laptop power savings)
bcdedit /set disabledynamictick yes
@echo.
@echo Disable synthetic timers
bcdedit /set useplatformtick yes
@echo.
@echo Boot timeout 0
bcdedit /timeout 0
@echo.
@echo Disable boot screen animation
bcdedit /set bootux disabled
@echo.
@echo Speed up boot times
bcdedit /set bootmenupolicy standard
@echo.
@echo Disable hyper virtualization
bcdedit /set hypervisorlaunchtype off
@echo.
@echo Remove windows login logo
bcdedit /set quietboot yes
@echo.
@echo.
@echo Disable boot logo
bcdedit /set {globalsettings} custom:16000067 true
@echo.
@echo Disable spinning animation
bcdedit /set {globalsettings} custom:16000069 true
@echo.
@echo Disable boot messages
bcdedit /set {globalsettings} custom:16000068 true
@echo.
pause
