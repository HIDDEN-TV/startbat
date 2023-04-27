:menu
@echo off 
mode 60,20
color 09
echo.
echo        1 Lancer Serveur     2 vider le cache
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)

goto :menu
exit

:1
color 09
echo.
echo Lancement du serveur en cours...
ping localhost -n 2 >nul
echo.
cd /d C:\Users\skyfe\Desktop\tuto 
C:\Users\skyfe\Desktop\tuto\FXServer.exe +exec server.cfg
exit

:2
color 09
echo.
echo Suppression du cache en cours...
RMDIR /s /q "C:\Users\skyfe\Desktop\tuto\cache"
echo.
ping localhost -n 2 >nul
echo  cache vider !
echo.
echo 
exit


:6
echo.
echo Fermeture du programme en cours...
ping localhost -n 3 >nul
exit