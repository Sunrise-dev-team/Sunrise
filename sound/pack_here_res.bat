@echo off
@ chcp 1251
cd /d "%~dp0"
echo --------------------------------------------
echo -- Sunrise Builder # Folder pack
echo --------------------------------------------
for %%B in (%CD%\*.ini) do start /b "" "%CD%\..\tools\eipacker\eipacker.exe" %%B
for /D %%B in (%CD%\*_res) do start /b "" "%CD%\..\tools\eipacker\eipacker.exe" %%B
::echo %%B
::pause
::start "" "%CD%\..\..\EIStarter.exe"