@echo off

title Toontown Remodified Engine

set /P ttrUsername="Username: " || ^
set ttrmUsername=username
set /P ttrmpassword="Password: " || ^
set ttrmpassword=password
set TTRM_PLAYCOOKIE=%ttrmUsername%
set TTRM_PASSWORD=%ttrmPassword%
set username=%ttrmUsername%
set password=%ttrmpassword%
set TTR_GAMESERVER=192.99.144.208

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

echo ===============================
echo Starting Toontown Remodified - DEV...
echo ppython: %PPYTHON_PATH%
echo Username: %ttrmUsername%
echo Client Agent IP: %TTRM_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m "toontown.toonbase.CilentStart.py"

echo starting the game...

echo enjoy the game!

goto server

pause
