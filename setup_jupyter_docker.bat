@echo off

REM Create the shortcut on the desktop
set "SCRIPT_DIR=%~dp0"
set "TARGET_FILE=%SCRIPT_DIR%\start_jupyter.bat"
set "ICON_FILE=%SCRIPT_DIR%\icon.ico"
set "SHORTCUT_NAME=JupyterLab.lnk"


echo Set oWS = WScript.CreateObject("WScript.Shell") > "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
echo sLinkFile = "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.lnk" >> "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
echo oLink.TargetPath = "%TARGET_FILE%" >> "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
echo oLink.IconLocation = "%ICON_FILE%" >> "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
echo oLink.Save >> "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
cscript "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"
del "%USERPROFILE%\Desktop\%SHORTCUT_NAME%.vbs"

REM Initialize JupyterLab Docker
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
