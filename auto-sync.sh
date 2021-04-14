#!/usr/bin/env bash

DIR_ORIGEM="/home/$USER/Backup/" # <-- Altere seu diretório de origem
DIR_DESTINO="mydrive:/"          # <-- Altere seu dispositivo remoto

# Nome do arquivo de log
LOG="$(date +%m%Y)"
ARQUIVO_LOG="rcl-$LOG.log"

# Linha com a data do registro
MENSAGEM_LOG="#$(date "+%A, %d %B %Y")#" 
echo "$MENSAGEM_LOG" >> "$ARQUIVO_LOG" 

# Comando do rclone:
# -v  Modo verboso
# -P  Mostra o progresso durante a transferência
rclone -vP sync --progress "$DIR_ORIGEM" "$DIR_DESTINO" --log-file="$ARQUIVO_LOG"
