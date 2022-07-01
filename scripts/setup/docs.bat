@echo off
:: WS Datapack Setup Helper by osfanbuff63 and contributors
:: Licensed under the MIT License
set version=v0.1.0
title "WS Datapack Setup - Documentation Edition %version% by osfanbuff63 and contributors"
echo This script will download the pack and make it ready for a development environment.
echo If you want to set up for the docs instead, run this command: 'curl https://raw.githubusercontent.com/osfanbuff63/ws-datapack/scripts/get_docs.bat' and then 'get_docs'!
echo If you want to continue, press any key. Otherwise, press Ctrl+C now.
pause
setlocal 
goto ProgramCheck

:: Checks for `git` and `gh`, and if not found, installed via winget.
:ProgramCheck
@echo off
echo Checking for dependencies...
where winget
if not %errorlevel%==0
where git
if not %errorlevel%==0 winget install --id Git.Git
set %errorlevel% 0
where gh 
if not %errorlevel%==0 winget install --id GitHub.CLI
set %errorlevel% 0
where ruby
:: when connected to internet (working offline): make sure this package is valid
if not %errorlevel%==0 winget install --id Ruby.RubyInstaller

if %errorlevel%==0 goto Clone

:Clone
setlocal
@echo off
gh repo clone osfanbuff63/ws-datapack
if not %errorlevel%==0 goto NoAuth
cd ws-datapack
set GitBranch %1
if not %errorlevel%==0 goto NoArg
:: TODO: add a config option for git branch
git checkout -B %GitBranch%
if not %errorlevel%==0 goto GitBranchFail
cd docs
gem install bundler
if not %errorlevel%==0 goto RubyGemsFail
bundle install
if not %errorlevel%==0 goto BundlerFail
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

:RubyGemsFail
echo It looks like RubyGems might not be installed? Try installing it, and then rerunning this script.
pause
exit /b 3

:BundlerFail
echo It looks like Bundler has failed to install the dependencies! This is normal if you'd modified the Gemfile, or if an invalid change was pushed to the repo.
echo If you haven't made any modifications, report an issue on https://github.com/osfanbuff63/ws-datapack/issues/new, or try checking out a tag.
pause
exit /b 4

:Success
echo Success! Press any key to exit!
pause
exit /b 0
set %WS-Setup-Docs%=1
