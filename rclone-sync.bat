@echo off
echo Sincronizacao com a Cloud

REM Altere o diretório do rclone
SET DIR_RCLONE=C:\rclone

REM Altere o diretório de origem
SET DIR_ORIGEM=C:\Backup

REM Altere o diretório de destino
SET DIR_DESTINO=odrive:/

REM Altere o nome do log gerado (opcional)
SET ARQUIVO_LOG=%DIR_RCLONE%\rclone-sync-log.txt

start %DIR_RCLONE%\rclone -vP sync --progress %DIR_ORIGEM% %DIR_DESTINO% --log-file=%ARQUIVO_LOG%

echo.
echo Sincronismo concluido
echo.
Pause


