#!/usr/bin/env bash

#ANTES DE USAR ESSE SCRIPT CONFIGURE O RCLONE PARA O DISPOSITIVO DA NUVEM

# Esse script é para sincronizar uma pasta da sua máquina para a nuvem.
# ALTERE o caminho e o nome do seu diretório de origem e destino.
# Para sincronizar da nuvem para sua máquina, INVERTA os diretórios abaixo.

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
