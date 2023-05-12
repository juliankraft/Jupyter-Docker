@echo off

set "JUPYTER_DIR=%USERPROFILE%/Documents/jupyter"

if not exist "%JUPYTER_DIR%" (
    mkdir "%JUPYTER_DIR%"
)

docker run -it ^
--name "jupyter" ^
-p 8888:8888 ^
--user root ^
-e NB_USER="usr" ^
-e CHOWN_HOME=yes ^
-e JUPYTER_ENABLE_LAB=yes ^
-e JUPYTER_TOKEN=YXCV ^
-w "/home/usr" ^
-v %JUPYTER_DIR%:/home/usr ^
jupyter/datascience-notebook
