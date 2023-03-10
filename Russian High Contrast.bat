@echo off
rem Enables High Contrast mode
reg add "HKCU\Control Panel\Accessibility\HighContrast" /v Flags /t REG_SZ /d 122 /f

rem Changes the language to Russian
reg add "HKCU\Control Panel\International" /v sLanguage /t REG_SZ /d ru-RU /f

rem Restarts the Explorer shell to apply the changes
taskkill /f /im explorer.exe
start explorer.exe
