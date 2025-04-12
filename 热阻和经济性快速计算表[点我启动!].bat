@echo off
echo Starting Thermal Insulation Calculator Server...
echo Please keep this window open while using the application.

python --version > nul 2>&1
if %errorlevel% equ 0 (
    echo Python found, starting server on port 8080...
    start http://localhost:8080/index.html
    python -m http.server 8080
) else (
    echo Python not found.
    echo Please install Python from https://www.python.org/downloads/
    echo Be sure to check "Add Python to PATH" during installation.
    echo.
    echo Press any key to exit...
    pause > nul
) 