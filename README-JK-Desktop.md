# Jupyter Docker einrichten und laufen lassen

## Anleitung
Mit diesen Schritten kannst du einen lokalen Jupyter Server auf Windows einrichten und laufen lassen.

1.) Inhalt an einen Ort laden, wo er bleiben kann.

2.) Docker Desktop installieren: https://www.docker.com/get-started/

3.) Sicherstellen, dass die Docker Desktop up to date und einsatzfähig ist. Danach kann Docker Desktop wieder geschlossen werden.

4.) Danach die Datei "create_jupyter_docker.bat" ausführen.
    Diese Datei Initialisiert einen Docker Container, indem Jupyter eingerichtet ist und läuft. 
    Es wird eine Ordner angelegt unter: "C:\benutzer\$dein benutzername$\Dokumente\jupyter" 
    - falls der Ordner schon existiert, wird der Container einfach damit verbunden.

5.) Die Datei "start_jupyter.bat" aktiviert den Container und öffnet das Jupyter Lab in deinem Browser.
    Wenn du willst kannst du dazu eine Verknüpfung einrichten und auf dem Desktop platzieren das passende Icon wäre die Datei: "icon.ico".

6.) Es ist sollte soweit alles parat sein. Schritte 1 - 4 müssen nicht wiederholt werden. 
    Von nun an sollte es möglich sein mit "start_jupyter.bat" oder der Verknüpfung ins Jupyter Lab zu kommen.


## Anleitung zum Erstelle einer Verknüpfung (ChatGPT)

-   Navigieren Sie zum Speicherort der .bat-Datei, zu der Sie eine Verknüpfung erstellen möchten.

-   Klicken Sie mit der rechten Maustaste auf die .bat-Datei und wählen Sie "Verknüpfung erstellen" aus dem Kontextmenü aus. Dadurch wird eine Verknüpfung der .bat-Datei erstellt.

-   Klicken Sie mit der rechten Maustaste auf die neu erstellte Verknüpfung und wählen Sie "Eigenschaften" aus dem Kontextmenü.

-   Im Eigenschaftenfenster der Verknüpfung wechseln Sie zum Register "Verknüpfung".

-   Klicken Sie auf die Schaltfläche "Anderes Symbol" (unterhalb des Feldes "Symbol") und es wird ein Dialogfeld geöffnet, das Ihnen erlaubt, ein Icon auszuwählen.

-   Suchen Sie das gewünschte Icon aus und klicken Sie darauf. Wenn Sie eigene Icons verwenden möchten, können Sie auf "Durchsuchen" klicken und die Datei mit dem gewünschten Icon auswählen.

-   Nachdem Sie das Icon ausgewählt haben, klicken Sie auf "OK", um das Dialogfeld zu schließen.

-   Klicken Sie erneut auf "OK", um das Eigenschaftenfenster zu schließen.



## Lizenz:

Es ist mir wurst mit wem das geteilt wird, wie das verwendet wird und was damit gemacht wird. Es geschieht aber alles auf eigene Verantwortung.