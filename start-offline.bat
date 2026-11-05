@echo off
REM Runs the showcase on this PC without internet. Keep this window open while presenting.
cd /d "%~dp0"
start "" cmd /c "timeout /t 3 >nul & start http://localhost:8080/#kiosk"
python -m http.server 8080 || py -m http.server 8080 || (echo Python is not installed. Get it free from https://www.python.org/downloads/ & pause)
