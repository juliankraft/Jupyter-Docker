# Jupyter Docker einrichten und laufen lassen

## Anleitung
Mit diesen Schritten kannst du einen lokalen Jupyter Server auf Windows einrichten und laufen lassen.

1.) Inhalt an einen Ort entpacken, wo er bleiben kann.

2.) Docker Desktop installieren: https://www.docker.com/get-started/

3.) Sicherstellen, dass die Docker Desktop up to date und einsatzfähig ist. Danach kann Docker Desktop wieder geschlossen werden.

4.) Danach die Datei "setup_jupyter_docker.bat" ausführen.
    Diese Datei Initialisiert einen Docker Container, indem Jupyter eingerichtet ist und läuft. 
    Es wird eine Ordner angelegt unter: "C:\benutzer\$dein benutzername$\Dokumente\jupyter" 
    - falls der Ordner schon existiert, wird der Container einfach damit verbunden.
    Es wird eine Desktopverknüpfung eingerichtet, mit der JupyterLab gestartet werden kann.

5.) Die Datei "start_jupyter.bat" aktiviert den Container und öffnet das Jupyter Lab in deinem Browser.
   
6.) Es ist sollte soweit alles parat sein. Schritte 1 - 4 müssen nicht wiederholt werden. 
    Von nun an sollte es möglich sein mit "start_jupyter.bat" oder der Verknüpfung ins Jupyter Lab zu kommen.
## Lizenz:

Es ist mir wurst mit wem das geteilt wird, wie das verwendet wird und was damit gemacht wird. Es geschieht aber alles auf eigene Verantwortung.