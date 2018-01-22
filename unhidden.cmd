@echo off
rem This script by Wei Chen (Jan 22, 2018), and it can recover your effected files and folders

echo 設定環境變數..
set rootdir=%~d0
cls

echo.
echo 正在解除隱藏資料夾及檔案..
attrib -s -a -h /S /D *.*
attrib +s +a +h +r "%~d0/System Volume Information" >nul 2>&1
attrib +s +a +h +r "%~d0/$RECYCLE.BIN" >nul 2>&1
timeout 2
cls

echo.
echo 正在刪除暫存檔..
del *.lnk >nul 2>&1
del ~*.* >nul 2>&1
timeout 2
cls

echo.
echo 正在移動檔案至根目錄
echo.
echo -----------------------------------------------------
echo.
for /f "tokens=*" %%i in ('dir _ /b') do (
move "_\%%i" "%rootdir%" >nul
echo 移動了 %%i 到根目錄
)
echo.
echo -----------------------------------------------------
timeout 2
cls

echo.
echo 正在注射預防針..
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
if ERRORLEVEL 0 echo 操作已完成!

echo.
pause