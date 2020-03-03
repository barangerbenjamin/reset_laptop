@echo off
echo Removing Github Desktop
choco uninstall github-desktop -y
echo Github Desktop Uninstalled!
echo Remove Github Cached Files
del /f /s /q "%APPDATA%\Github Desktop" 1>nul
del /f /s /q "%LOCALAPPDATA%\GithubDesktop" 1>nul
rmdir /s /q "%APPDATA%\Github Desktop"
rmdir /s /q %LOCALAPPDATA%\GithubDesktop 
echo Files deleted
echo Remove Registry Key
reg delete "HKEY_CURRENT_USER\Software\Classes\github-windows" /f
echo
echo Github Desktop fully removed...
echo
echo ----------------------------------------
echo
echo Removing Google Chrome
choco uninstall googlechrome -y
echo Removing local files
del /f /s /q "%LOCALAPPDATA%\Google\Chrome" 1>nul
rmdir /s /q "%LOCALAPPDATA%\Google\Chrome"
del /f /s /q "%PROGRAMFILES(X86)%\Google\Chrome" 1>nul
rmdir /s /q "%PROGRAMFILES(X86)%\Google\Chrome\Application"
rmdir /s /q "%PROGRAMFILES(X86)%\Google\Chrome"
echo
echo ----------------------------------------
echo
echo Removing Anaconda3
choco uninstall anaconda3 -y
echo
echo ----------------------------------------
echo
echo Removing Sublime Text 3
choco uninstall sublimetext3 -y
echo
echo ----------------------------------------
echo
echo Removing User files
del /f /s /q "%USERPROFILE%\documents" 1>nul
set DOCUMENTS=%USERPROFILE%\documents
for /F "delims=" %%i in ('dir %DOCUMENTS% /b') do ( rmdir "%DOCUMENTS%\%%i" /q /s)
set DOCUMENTS=
echo Documents emptied
echo
del /f /s /q "%USERPROFILE%\downloads" 1>nul
set DOWNLOADS=%USERPROFILE%\downloads
for /F "delims=" %%i in ('dir %DOWNLOADS% /b') do ( rmdir "%DOWNLOADS%\%%i" /q /s)
set DOWNLOADS=
echo Downloads emptied
echo
del /f /s /q "%USERPROFILE%\desktop" 1>nul
set DESKTOP=%USERPROFILE%\desktop
for /F "delims=" %%i in ('dir %DESKTOP% /b') do ( rmdir "%DESKTOP%\%%i" /q /s)
set DESKTOP=
echo Desktop emptied
echo
echo ----------------------------------------
echo
echo Uninstall Completed!