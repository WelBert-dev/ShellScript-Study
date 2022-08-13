#!/bin/bash
# ----------------------------------------------------------------------------------------
# Script   : Chega PID
# Descrição: Compara PID do script e do shell no terminal.
# Versão   : 0.1
# Autor    : Wellison Bertelli <wellison.bertelli@hotmail.com>
# Data     : 03/08/2021
# Licença  : GNU/GPL v3.0
# ----------------------------------------------------------------------------------------
# Uso: ~/docs/bash.info/scripts.bash/05.checandoPID ou ./checandoPID
# ----------------------------------------------------------------------------------------

clear

sep="------------------------------------------------------------------------------"

echo "$sep
COMPARANDO PID DAS SESSÕES DO BASH NO SCRIPT E NO TERMINAL
$sep
PID da sessão do bash do script: $$
PID da sessão do bash no terminal: $PPID
$sep
$(ps -p $$,$PPID -o pid=,user=,tty=,args=)
$sep
"
exit 0

