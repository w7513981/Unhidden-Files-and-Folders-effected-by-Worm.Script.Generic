@echo off
rem This script by Wei Chen (Jan 22, 2018), and it can recover your effected files and folders

echo �]�w�����ܼ�..
set rootdir=%~d0
cls

echo.
echo ���b�Ѱ����ø�Ƨ����ɮ�..
attrib -s -a -h /S /D *.*
attrib +s +a +h +r "%~d0/System Volume Information" >nul 2>&1
attrib +s +a +h +r "%~d0/$RECYCLE.BIN" >nul 2>&1
timeout 2
cls

echo.
echo ���b�R���Ȧs��..
del *.lnk >nul 2>&1
del ~*.* >nul 2>&1
timeout 2
cls

echo.
echo ���b�����ɮצܮڥؿ�
echo.
echo -----------------------------------------------------
echo.
for /f "tokens=*" %%i in ('dir _ /b') do (
move "_\%%i" "%rootdir%" >nul
echo ���ʤF %%i ��ڥؿ�
)
echo.
echo -----------------------------------------------------
timeout 2
cls

echo.
echo ���b�`�g�w���w..
attrib -s -a -h "%temp%\Rundll32.js"
del "%temp%\Rundll32.js"
del "Rundll32.js"
echo "go hack other pcs plz you motherfucker" >%temp%\Rundll32.js
echo "DO NOT DELETE ME OR MODIFY ME, THIS IS A FAKE WORM!!!" >Rundll32.js
attrib +s +a +h +r %temp%\Rundll32.js
attrib +s +a +h +r Rundll32.js
timeout 2
cls

echo.
if ERRORLEVEL 0 echo �ާ@�w����!

echo.
pause