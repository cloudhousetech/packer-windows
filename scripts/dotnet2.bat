:: Windows XP .Net Framework 2

@echo off
set hotfix="E:\HOTFIX\NetFx20SP2_x86.exe"
if not exist %hotfix% goto :eof

@echo on
start /wait cmd /c "%hotfix%" /q
