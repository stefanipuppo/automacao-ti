# Automação de Tarefas de Manutenção – Linux


Projeto técnico desenvolvido para automatizar rotinas comuns de manutenção em Linux, com foco em limpeza de arquivos, atualizações e backup.

## Objetivo
 
Automatizar tarefas de manutenção em notebooks ou desktops Linux, incluindo: Limpeza de arquivos temporários, atualização do sistema e backup de pastas importantes.


## Tecnologias Utilizadas

- bash

- cron

- apt

- rclone

------

## Tarefas Realizadas

### Limpeza de Arquivos Temporários

- Script em Bash para apagar arquivos .tmp, .log, .bak e pastas vazias

- Geração de log com os arquivos removidos

- Agendamento com cron



### Atualização do Sistema

- Script com apt update && apt upgrade -y

- Log com o resultado da atualização

- Agendamento semanal com cron


### Backup Automatizado

- Script com rclone para backup de pastas como Documentos

- Backup com marcação por data

- Testado manualmente e agendado com cron

----

#### Todos os scripts foram testados manualmente 
#### Os agendamentos com cron foram configurados com sucesso
#### Logs foram gerados para cada tarefa
#### Caminhos dinâmicos foram utilizados com $HOME para maior portabilidade
