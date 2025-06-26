#!/bin/bash

# Definir pasta de origem
ORIGEM="$HOME/teste_limpeza"

# Definir a pasta de destino
DESTINO="$HOME/automacao-ti/backup"

# Criar pasta de destino, se não existir
mkdir -p "$DESTINO"

# Criar nome do arquivo com data
ARQUIVO="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Criação do backup apenas das pastas Configurações e banco-de-dados
tar -czf "$DESTINO/$ARQUIVO" "$ORIGEM/Configurações" "$ORIGEM/banco-de-dados"

# Mensagem de sucesso
echo "Backup das pastas 'Configurações' e 'banco-de-dados' concluído com sucesso!"



# Verificar se o comando anterior teve sucesso
if [ $? -eq 0 ]; then
    echo "Backup criado com sucesso em: $DESTINO/$ARQUIVO"
else
    echo "Erro ao criar o backup. Verifique os caminhos e permissões."
fi



# Enviar backup para o Google Drive (remote 'meudrive')
rclone copy "$DESTINO/$ARQUIVO" meudrive:backup --progress

# Verificar se o upload foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "Backup enviado com sucesso para o Google Drive!"
else
    echo "Erro ao enviar backup para o Google Drive."
fi
