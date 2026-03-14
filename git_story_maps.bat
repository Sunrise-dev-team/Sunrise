@echo off
@ chcp 1251
cd /d "%~dp0"
echo --------------------------------------------
echo -- Sunrise Builder # visualize MOB files for Git
echo --------------------------------------------
::echo -- Created by Atm(c)2026
::echo -- -Tools by Aspadm(c)2019

if exist "%CD%\tools\eirepack\Formats\mob.py" (
	for %%i in (%CD%\maps\*.mob) do (
		echo Make .yaml for "%%i"
        ::pushd "%%i"
        call python "%CD%\tools\eirepack\formats\mob.py" "%%i" "%%i_git.yaml"
        ::popd
        echo Sucess of "%%i".
        echo .
    )
)