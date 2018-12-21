:: Windows XP Powershell 2.0
:: Hotfix KB968930

@echo off
set hotfix="E:\HOTFIX\WindowsXP_KB968930_x86_ENG.exe"
if not exist %hotfix% goto :eof

@echo on
start /wait cmd /c "%hotfix%" /q
