@echo off
cd /D %~dp0
set DONT_CHANGE_CWD=1
python.exe -B src\gen_tileset_eimap.py %*

