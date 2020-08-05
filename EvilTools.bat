:: turns off echo and sets the color
@echo off
color 0a
:: Sets the color 
title Evil Tools 0.0.1 {BETA}
pause
: initiates the menu
:Menu
cls
echo welcome to Evil Tools!
echo Made by TmB
echo Warning Evil tools is still in Beta and can malfunction, use at your own risk!
pause
cls
echo Main Menu!
SET /P _input= Press 1 for ip pinger!
SET /P _input= Press 2 for network info!
SET /P _input= Press 4 to enable god mode
SET /P _input= Press 5 to view changlog
SET /P _input= Press 6 to quit
:: Gets user input
IF "%_input%"=="1" GOTO :Ping
IF "%_input%"=="2" GOTO :NETinfo
IF "%_input%"=="3" GOTO :Delsys32
IF "%_input%"=="4" GOTO :God
IF "%_input%"=="5" GOTO :logs
IF "%_input%"=="6" GOTO :Quit
IF "%_input%"=="7" GOTO :FileDownloadpl
if "%_input%"=="8" GOTO :Shutdown
:Ping
cls
echo Ip pinger Menu!

set /p IP=Enter IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top

:NETinfo
cls
echo Network Info Menu!

set /p _Input= Do you want your Network Info? (Y/N)

if "%_Input%"=="Y" GOTO :Net
if "%_Input%"=="y" GOTO :Net
if "%_Input%"=="N" GOTO :Menu
if "%_Input%"=="n" GOTO :Menu

:Net
cls
echo Network Info
pause
ipconfig
pause
GOTO :Menu

:Delsys32
set /p _input= Are you sure you want to Delete System32? (Y/N)

if "%_Input%"=="Y" GOTO :dels32
if "%_Input%"=="y" GOTO :dels32
if "%_Input%"=="N" GOTO :Menu
if "%_Input%"=="n" GOTO :Menu



:god
cls

Echo Enabling God Mode
mkdir C:\Desktop\"{ED7BA470-8E54-465E-825C-99712043E01C}"
echo god mode enabled!
pause
GOTO :Menu


:logs
cls
echo Change logs!
echo Version 0.0.1
echo added the ip pinger 
echo added the Network Info menu
echo added the delete System32 function 
echo added a god mode function
echo fixed minor bugs
pause
GOTO :Menu

:FileDownloadpl
cls
set /p _Input= do you want to download PortLord.pl?(Y/N)
if _Input==Y GOTO :downloadpl
if _Input==y GOTO :downloadpl
if _Input==N GOTO :Menu
if _Input==n GOTO :Menu

:downloadpl
Echo downloading PortLords.pl
git clone https://github.com/TmB-Bot/PortLords
echo PortLords is now download!
pause
GOTO :Menu

:FileDownloadws
cls
set /p _Input= do you want to download Wireshark?(Y/N)
if _Input==Y GOTO :downloadws
if _Input==y GOTO :downloadws
if _Input==N GOTO :Menu
if _Input==n GOTO :Menu

:downloadws
Echo downloading wiresahrk
git clone https://github.com/TmB-Bot/Wireshark
echo open the file and go to the link to download wire shark!
pause
GOTO :Menu

:Shutdown
cls
echo Your about to restart this computer
pause
Shutdown /r 

:Quit
cls
pause


                                                            