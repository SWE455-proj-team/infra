@echo off
for %%I in ("%CD%") do set "CURRENT_DIR=%%~nxI"
echo %CURRENT_DIR%
git init
git add .
git commit -m "Monorepo split commit"
git remote add origin https://github.com/SWE455-proj-team/%CURRENT_DIR%.git
git push -u origin main