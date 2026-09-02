@echo off
chcp 65001 > nul
cd /d "%~dp0"

echo.
echo  ==========================================
echo    Japan Travel Log  /  일본여행 기록장
echo  ==========================================
echo.
echo   Starting local server...
echo   브라우저가 곧 열립니다. 이 검은 창은 닫지 마세요.
echo   (끝낼 때는 이 창에서 Ctrl + C)
echo.

start "" http://localhost:8765/index.html

python -m http.server 8765 2>nul
if errorlevel 1 (
  echo.
  echo   [!] Python 을 찾지 못했어요.
  echo       index.html 파일을 그냥 더블클릭해도 대부분 잘 동작합니다.
  echo       ^(단, '지금 내 위치' 버튼만 안 눌려요^)
  echo.
  pause
)
