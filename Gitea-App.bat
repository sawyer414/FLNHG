@echo off
chcp 65001
title Git Tools
cls
:home
cls
echo Home Menu
echo Version: V1.0.3
echo Current Path: %cd%
echo ===================================================
echo 1. Merge Branches
echo 2. Commit and Push
echo 3. View Branches
echo 4. Create Branches
echo 5. Pull
echo 6. Switch Branches
echo ===================================================
choice /c 123456 /m "What would you like to do?

if %errorlevel% == 1 goto :mergeBranches
if %errorlevel% == 2 goto :commitPush
if %errorlevel% == 3 goto :branches
if %errorlevel% == 4 goto :branchesCreate
if %errorlevel% == 5 goto :pullGit
if %errorlevel% == 6 goto :branchesSwitch

echo Open a pull request
echo ===================================================
echo 
echo ===================================================
pause


:mergeBranches
cls

echo Git Merging Software
echo ===================================================
echo Your branches
git branch -a
echo ===================================================
SET /P firstBranch=What is the branch that you are merging from? 
SET /P secondBranch=What is the brand that you are merging into? 
echo ===================================================

git checkout %secondbranch%
timeout 3 >nul
git merge --no-ff %firstbranch%
timeout 3 >nul
git push origin %secondBranch%
timeout 3 >nul
cls

echo ===================================================
echo Successfully merged %firstBranch% into %secondBranch%
echo Please check your github desktop for any errors.
echo ===================================================
pause
goto :home

:commitPush
cls
echo Git Push and Commit
echo ===================================================
git branch -a
echo ===================================================
SET /p branchSwitch=What branch would you like to switch to? 
git switch %branchSwitch%
echo ===================================================
SET /p commitName=What would you like to name your commit? 
git add --all
git commit -m "%commitName%"
timeout 3 >nul
echo Pushing...
timeout 3 >nul
git push origin %branchSwitch%
pause
goto :home

:branches
cls
echo All Branches - * indicates the current branch
echo ===================================================
git branch -a
echo ===================================================
pause
goto :home

:branchesCreate
cls
echo Create New Branch
echo ===================================================
git branch -a
echo ===================================================
SET /p branchCreate=What branch would you like to create? 
git switch -c %branchCreate%
echo ===================================================
timeout 3 >nul
goto :home

:pullGit
cls
echo Pull from Git
echo ===================================================
git branch -a
echo ===================================================
SET /p branchPull=What branch would you like to switch to? 
git switch %branchPull%
echo ===================================================
git pull origion %branchPull%
pause
goto :home

:branchesSwitch
cls
echo Switch Branches
echo ===================================================
git branch -a
echo ===================================================
SET /p branchesSwitch=What branch would you like to switch to? 
git switch %branchesSwitch%
pause
goto :home