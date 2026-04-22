@echo off
set GAME_DIR=C:\Users\qpfl1\Desktop\GM\Wildtamerz
set PUBLIC_DIR=%GAME_DIR%\public
set DLDIR=C:\Users\qpfl1\Downloads
if not exist "%DLDIR%\index.html" set DLDIR=C:\Users\qpfl1\ë¤ì´ë¡ë

echo Checking: %DLDIR%

if exist "%DLDIR%\index.html" (
    echo [1/3] index.html found! Copying...
    copy /Y "%DLDIR%\index.html" "%PUBLIC_DIR%\index.html"
    del /F "%DLDIR%\index.html"
    echo [1/3] Done!
) else (
    echo [ERROR] index.html not found!
    echo Download index.html from Claude first.
    pause
    exit
)

cd /d "%GAME_DIR%"
echo [2/3] Pushing to GitHub...
git add .
git commit -m "update"
git push origin main
echo [2/3] Done!

echo [3/3] All done!
echo Site will update in ~1 min:
echo https://wild-tamerz.web.app
pause
