@echo off
@ chcp 1251
cd /d "%~dp0"
echo --------------------------------------------
echo -- Sunrise Builder
::echo -- ----------------------
echo -- Created by Atm(c)2023
echo -- -Tools by Demoth(c)2014-2016
echo -- -Tools by Aspadm(c)2019
echo -- -Tools by Nival(c)1998-2001
echo --------------------------------------------
start /b "" "%CD%\tools\eipacker\ini2reg.exe" %CD%\config.ini
start /b "" "%CD%\tools\eipacker\ini2reg.exe" %CD%\config\ai.ini
::start "" "%CD%\tools\ini2reg.exe" %CD%\config\streamsn.ini
::start "" "%CD%\tools\ini2reg.exe" %CD%\config\music.ini
::for /D %%B in (%CD%\res\*_res) do start /b "" "%CD%\tools\eipacker\eipacker.exe" %%B
::setlocal
echo Search pack_here_res.bat...
for /D %%i in (%CD%\*) do (
    if exist "%%i\pack_here_res.bat" (
        echo pack_here_res.bat exist in "%%i". Run...
        pushd "%%i"
        call pack_here_res.bat
        popd
        echo Sucess of "%%i".
        echo.
    )
)
::pause
::echo %%B
call "%CD%\git_story_maps.bat"
pause
start "" "%CD%\..\..\EIStarter.exe"