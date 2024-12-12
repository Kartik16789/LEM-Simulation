@echo off
REM Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b 1
)

REM Create a virtual environment
python -m venv venv

REM Activate the virtual environment
call venv\Scripts\activate

echo Virtual environment created and activated.