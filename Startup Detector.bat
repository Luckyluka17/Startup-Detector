@echo off
title Startup Detector
cls
color f
cd %cd%
echo msgbox "N'oubliez pas de lire les instructions avant de commencer." >msg.vbs
start msg.vbs
goto :start

:start
color f
cls
echo *******************************
echo * Startup Detector with Shell *
echo *        Version 1.0          *
echo *   Created by Luckyluka17    *
echo *******************************
echo.
echo.
echo *******************************
echo * Options disponibles *   x   *
echo *******************************
echo * Voir les programmes *   1   *
echo * au demarrage du pc  *       *
echo *******************************
echo * Infos logiciel      *   2   *
echo *******************************
echo * Quitter le logiciel *   3   *
echo *******************************
echo.
set /p ch=">"
if "%ch%" == "1" goto :1
if "%ch%" == "2" goto :2
if "%ch%" == "3" exit
goto :start

:2
color a
cls
echo *******************************
echo * Startup Detector with Shell *
echo *        Version 1.0          *
echo *   Created by Luckyluka17    *
echo *******************************
echo * Logiciel code avec Visual   *
echo * studio code de Microsoft    *
echo *******************************
echo * Code source disponible sur  *
echo * Github.                     *
echo *******************************
echo.
echo Appuyez sur une touche pour revenir dans le menu.
pause >nul
goto :start

:1
echo Detection en cours, veuillez patientez...
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
cls
echo *******************************
echo Logiciel dans le dossier shell:startup :
dir
echo *******************************
echo Logiciel au demarrage :
powershell "Get-CimInstance Win32_StartupCommand | Select-Object Name, command, Location, User | Format-List"
echo *******************************
echo Appuyez sur une touche pour retourner dans le menu.
pause >nul
goto :start