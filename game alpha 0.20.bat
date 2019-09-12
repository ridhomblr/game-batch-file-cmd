@echo off
color 0a
echo do you wish to play the game? (press any key to continue)
pause >nul
goto main1

:main1
cls
echo welcome to game.bat alpha 0.20
echo.
echo p) play
echo q) quit
echo.
set /p m0=choose... 
if %m0% equ p goto main2
if %m0% equ q exit
goto main1

:main2
cls
echo welcome to game.bat
echo -------------------------------
echo there are chunks of the game...
echo.
echo l) left
echo r) right
echo b) back
echo.
set /p m1=choose... 
if %m1% equ l goto left1
if %m1% equ r goto right1
if %m1% equ b goto main1
goto main2

:left1
cls
echo left area not complete...
echo.
echo m) monster
echo l) left
echo s) shortcut
echo b) back
echo.
set /p l1=choose... 
if %l1% equ m goto monster1
if %l1% equ b goto main2
if %l1% equ s goto right1
if %l1% equ l goto left2
goto left1

:right1
cls
echo right area not complete...
echo.
echo b) back
echo s) shortcut
echo e) exit
echo.
set /p r1=choose... 
if %r1% equ b goto main2
if %r1% equ s goto left1
if %r1% equ e exit
goto right1

:monster1
cls
echo monster cave... be careful
echo.
echo a) attack (coming soon)
echo b) back
echo.
set /p f1=choose... 
if %f1% equ a goto monster2
if %f1% equ b goto left1
goto monster1

:monster2
cls
echo coming soon...
pause >nul
goto monster1

:left2
cls
echo coming soon.
pause >nul
goto left1