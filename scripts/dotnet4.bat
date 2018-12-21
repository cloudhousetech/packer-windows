:: Windows XP .Net Framework 4 Full

@echo off
set hotfix="E:\HOTFIX\dotNetFx40_Full_x86_x64.exe"
if not exist %hotfix% goto :eof

@echo on
start /wait cmd /c "%hotfix%" /q
