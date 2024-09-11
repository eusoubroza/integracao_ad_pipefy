@echo off

REM Define the log file path
set LOGFILE=script_log.txt

REM Run the first Python script and log the output
python GET_AD_DATA.py >> %LOGFILE% 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo "Script 1 failed. Exiting..." >> %LOGFILE%
    exit /b %ERRORLEVEL%
)

REM Run the second Python script and log the output
python UPDATE_DB_DATA.py >> %LOGFILE% 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo "Script 2 failed. Exiting..." >> %LOGFILE%
    exit /b %ERRORLEVEL%
)

REM Run the third Python script and log the output
python PIPEFY_PROJECT_REFRESH_PIPE.py >> %LOGFILE% 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo "Script 3 failed. Exiting..." >> %LOGFILE%
    exit /b %ERRORLEVEL%
)

echo "All scripts ran successfully!" >> %LOGFILE%
