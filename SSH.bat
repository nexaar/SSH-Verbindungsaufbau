@echo off

echo Bitte geben Sie die IP-Adresse ein:
set /p ip=

echo Bitte geben Sie den Benutzernamen ein:
set /p username=

echo Bitte geben Sie das Passwort ein:
set /p password=

ping %ip% -n 1 -w 1000 > nul

if %errorlevel% == 0 (
  echo Verbindung zu %ip% erfolgreich hergestellt.
  sshpass -p %password% ssh %username%@%ip%
) else (
  echo Verbindung zu %ip% fehlgeschlagen.
)
