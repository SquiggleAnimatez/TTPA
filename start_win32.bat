@echo off
title Project Anvil Launcher

:menu
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to do!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo.
echo #1 - Run Project Anvil
echo #2 - Exit
echo. 
choice /C:123 /n /m "Selection: "%1
if errorlevel ==2 EXIT /B
if errorlevel ==1 goto run

:run
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to launch!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - Log In
echo #2 - Go Back
echo.
choice /C:1234 /n /m "Selection: "
if errorlevel ==1 goto awsserver
if errorlevel ==2 goto menu

:db
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What database do you want to use!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - YAML (Recommended)
echo #2 - MongoDB
echo #3 - Go Back
echo.
choice /C:123 /n /m "Selection: "
if errorlevel ==3 goto run
if errorlevel ==2 goto mongo
if errorlevel ==1 goto yaml

:yaml
cls 
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Starting Localhost!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
cd scripts
echo Launching Astron...
START astron_yaml-win32.bat
echo Launching the Uberdog Server...
START uberdog-win32.bat
echo Launching the AI Server...
START ai-win32.bat
cd ..
SET TT_GAMESERVER=127.0.0.1
goto game


:mongo
cls 
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Starting Localhost!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
cd scripts
echo Launching Mongo...
START mongo-win32.bat
echo Launching Astron...
START astron_mongo-win32.bat
echo Launching the Uberdog Server...
START uberdog-win32.bat
echo Launching the AI Server...
START ai-win32.bat
cd ..
SET TT_GAMESERVER=127.0.0.1
goto game

:connect
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What Server are you connecting to!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
set /P TT_GAMESERVER="Server IP: "
goto game

:awsserver
set TT_GAMESERVER=25.4.56.15

:game
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Username [!] This does get stored in your source code so beware!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
set /P ttUsername="Username: "
set TT_PLAYCOOKIE=%ttUsername%
set TT_USERNAME=%ttUsername%
set TT_PASSWORD=%ttUsername%
echo.
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Welcome to Project Anvil, %ttUsername%!
echo The Tooniverse Awaits You!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
:startgame
title Project Anvil Client
"dependencies/panda/python/python.exe" -m toontown.toonbase.ClientStart
PAUSE
goto startgame