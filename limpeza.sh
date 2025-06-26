#!/bin/bash
# Script de limpeza de arquivos temporarios 
# Autor: Stefani Dal Puppo
# Data: 26/06/2025

# Diretorio Base
DIRETORIO=$HOME/teste_limpeza

# Arquivo de log
LOG="$HOME/limpeza_log.txt"

# Inicio do log
echo "Inicio da limpeza: $(date)" >> "LOG"

# Apagar arquivos temporarios 
find "$DIRETORIO" -type d -empty -delete
echo "Apagando" {} \; -exec rm {} \;>> "$LOG"

# Apagar pastas vazias
find "$DIRETORIO" -type d -empty -delete

# Fim do log
echo "Limpeza concluída: $(date)" >> "$LOG"
echo "--------------------------" >> "$LOG"
