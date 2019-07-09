@echo off

title Toontown Remodified Engine

set /P ttrUsername="Username: " || ^
set ttrUsername=username
set /P ttrpassword="Paassword: " || ^
set ttrpassword=password
set TTR_PLAYCOOKIE=%ttrUsername%
set TTR_PASSWORD=%ttrpassword%
set username=%ttrUsername%
set password=%ttrpassword%
set TTR_GAMESERVER=192.99.144.208

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

echo ===============================
echo Starting Toontown Remodified - DEV...
echo ppython: %PPYTHON_PATH%
echo Username: %ttrUsername%
echo Client Agent IP: %TTR_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m "toontown.toonbase.Cilentstart.py"

echo loading...

goto server

pause
