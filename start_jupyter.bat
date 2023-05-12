@echo off

docker start jupyter

:check_jupyter
curl http://localhost:8888/tree?token=YXCV >nul 2>&1
if errorlevel 1 (
    timeout /t 1 >nul
    goto :check_jupyter
)

REM Open the browser with Jupyter Notebook
start "" "http://localhost:8888/?token=YXCV"
