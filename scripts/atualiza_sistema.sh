#!/bin/bash

# Nome do log
LOG_FILE="../atualizaco_log.txt"

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
