@echo off
cd /D %~dp0
set DONT_CHANGE_CWD=1
python\python.exe -B src\gen_mod_eimap.py %*
