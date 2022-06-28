::
@echo off
:: WS Datapack Setup Helper by osfanbuff63 and contributors
:: Licensed under the MIT License
set version=v0.1.0
title "WS Datapack Setup %version% Datapack Edition by osfanbuff63 and contributors"
echo This script will download the pack and make it ready for a development environment.
echo If you want to set up for the docs instead, run this command: 'curl https://raw.githubusercontent.com/osfanbuff63/ws-datapack/scripts/get_docs.bat' and then 'get_docs'!
echo If you want to continue, press any key. Otherwise, press Ctrl+C now.
pause
goto ProgramCheck

:: Checks for `git` and `gh`, and if not found, installed via winget.
:ProgramCheck
@echo off
echo Checking for dependencies...
where git
if not %errorlevel%==0 winget install --id Git.Git
set %errorlevel% 0
where gh 
if not %errorlevel%==0 winget install --id GitHub.CLI
set %errorlevel% 0
goto Clone

:Clone
SETLOCAL
@echo off
gh repo clone osfanbuff63/ws-datapack
if not %errorlevel%==0 goto NoAuth
cd ws-datapack
set GitBranch %1
if not %errorlevel%==0 goto NoArg
:: TODO: add a config option for git branch
git checkout -B %GitBranch%
if not %errorlevel%==0 goto GitBranchFail
if %errorlevel%==0 goto Success

:: If it fails, tell the user to (re)authenticate
:NoAuth
echo It looks like your 'gh' isn't authenticated! Try opening a shell and running the `gh auth login' command!
pause
exit /b 1

:: No arg specified
:NoArg
echo It looks like you haven't added an argument for the branch to create! Try rerunning the script with 'get_pack your-branch-name', or if you are running this from PowerShell, '.\get_pack.bat your-branch-name'
pause
exit /b 2

:Success
echo Success! Press any key to exit!
pause
exit /b 0
set %WS-Setup-Pack%=1
