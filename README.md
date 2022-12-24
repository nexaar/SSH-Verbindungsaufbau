# SSH-Verbindungsaufbau

Hinweis: Stellen Sie sicher, dass das sshpass-Programm installiert ist und verfügbar ist, bevor Sie das Skript ausführen.

Hier ist ein Beispiel für ein Batch-Skript, das die IP-Adresse, den Benutzernamen und das Passwort abfragt und dann, falls der Ping erfolgreich war, eine SSH-Verbindung herstellt.

Das Skript fragt zunächst die IP-Adresse, den Benutzernamen und das Passwort ab und speichert diese in den Variablen ip, username und password. Anschließend führt es einen Ping auf die IP-Adresse aus und speichert das Ergebnis in der Standardausgabe in eine temporäre Datei. Wenn der Ping erfolgreich war (d.h. wenn der Rückgabewert 0 ist), wird eine SSH-Verbindung zu der IP-Adresse hergestellt und das Passwort wird mit dem Befehl sshpass übergeben. Wenn der Ping fehlgeschlagen ist (d.h. wenn der Rückgabewert ungleich 0 ist), wird eine entsprechende Meldung ausgegeben.


