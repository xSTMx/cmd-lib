@echo #########################################################################
@echo Erstelle Verzeichnis C:\Work...
mkdir C:\Work

@echo OFF

echo.
echo #########################################################################
echo Erstelle Eintrag in Registry...
echo Windows Registry Editor Version 5.00 > %TEMP%\map.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices] >> %TEMP%\map.reg
echo "W:"="\\??\\c:\\work" >> %TEMP%\map.reg
regedit /s %TEMP%\map.reg
del %TEMP%\map.reg

echo.
echo Damit die Aenderungen wirksam werden muss der Computer neu gestartet werden.

pause
