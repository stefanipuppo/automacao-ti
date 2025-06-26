#!/bin/bash

# Nome do log
LOG_FILE="../atualizacao_log.txt"

# Data e hora
echo "-------------------" >> "$LOG_FILE"
echo "Atualizaçao iniciada em: $(date)" >> "$LOG_FILE"


# Atualiza a lista de pacotes 
echo " Atualizando lista de pacotes.. "  >> "$LOG_FILE"
sudo apt update >> "$LOG_FILE" 2>&1

# Atualiza os pacotes instalados 
echo "Atualizando pacotes instalados" >> "$LOG_FILE"
sudo apt upgrade -y >> "$LOG_FILE" 2>&1

#Fim 
echo " Atualizacao finalizada em: $(date)" >> "LOG_FILE"
echo "===================================" >> "$LOG_FILE"


# Sincroniza a pasta local com o remoto usando rclone
echo "Iniciando backup com rclone..." >> "$LOG_FILE"
rclone copy /home/stef/automacao-ti/scripts meudrive:backup --log-file="$LOG_FILE" --log-level INFO

# Fim
echo "Atualização finalizada em: $(date)" >> "$LOG_FILE"
echo "===================================" >> "$LOG_FILE"

