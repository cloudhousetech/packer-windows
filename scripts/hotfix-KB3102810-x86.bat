:: Windows 7 SP1 require KB3102810 hotfix
:: Installing and searching for updates is slow and high CPU usage occurs in Windows 7.
:: https://support.microsoft.com/en-us/kb/3102810

@echo off

@powershell -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://download.microsoft.com/download/A/0/9/A09BC0FD-747C-4B97-8371-1A7F5AC417E9/Windows6.1-KB3102810-x86.msu', 'C:\Windows\Temp\Windows6.1-KB3102810-x86.msu'))"

set hotfix="C:\Windows\Temp\Windows6.1-KB3102810-x86.msu"
if not exist %hotfix% goto :eof

:: get windows version
for /f "tokens=2 delims=[]" %%G in ('ver') do (set _version=%%G)
for /f "tokens=2,3,4 delims=. " %%G in ('echo %_version%') do (set _major=%%G& set _minor=%%H& set _build=%%I)

:: 6.1
if %_major% neq 6 goto :eof
if %_minor% lss 1 goto :eof

@echo on
start /wait wusa "%hotfix%" /quiet
