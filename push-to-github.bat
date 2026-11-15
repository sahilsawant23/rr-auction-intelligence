@echo off
echo ========================================================
echo  Deploying Rajasthan Royals Clutch Intelligence Engine
echo  Target: https://github.com/sahilsawant23/rr-auction-intelligence
echo ========================================================
echo.

cd /d "%~dp0"

echo Initializing local repository...
git init

echo Staging all files (index.html, reports, data)...
git add .

echo Creating commit...
git commit -m "Rajasthan Royals Auction Intelligence System - Season 2 Round 1"

echo Setting branch to main...
git branch -M main

echo Checking remote origin...
git remote remove origin 2>nul
git remote add origin https://github.com/sahilsawant23/rr-auction-intelligence.git

echo.
echo Pushing to GitHub...
git push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================================
    echo  SUCCESS! Files pushed to GitHub repository.
    echo.
    echo  NEXT STEP TO GET YOUR LIVE LINK:
    echo  1. Open: https://github.com/sahilsawant23/rr-auction-intelligence/settings/pages
    echo  2. Under 'Branch', select 'main' and '/(root)'
    echo  3. Click 'Save'
    echo.
    echo  Your live dashboard link will be:
    echo  https://sahilsawant23.github.io/rr-auction-intelligence/
    echo ========================================================
) else (
    echo.
    echo [NOTE] If the push failed, please make sure you created the empty
    echo repo at: https://github.com/new with name: rr-auction-intelligence
)
echo.
pause
