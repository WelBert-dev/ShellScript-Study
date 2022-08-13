#!/bin/bash
# ----------------------------------------------------------------------------------------
# Script   : Condicionais de INT's
# Descrição: Exemplos de testes de expressões condicionais por input
# Versão   : 0.1
# Autor    : Wellison Bertelli <wellison.bertelli@hotmail.com>
# Data     : 03/08/2021
# Licença  : GNU/GPL v3.0
# ----------------------------------------------------------------------------------------
# Uso: ~/docs/bash.info/scripts.bash/06.condicionaisINT.sh
# ----------------------------------------------------------------------------------------

clear

# Mensagem..

echo "O Objetivo desse script é comparar é comparar seu número com o número 5"
read -p "Entre com um número entre 1 e 10: " num_user

# Tratar erros...

# =~ == indica ao teste que na direita tem uma REGEX 
# ! == Not ou seja inverte o resultado 
[[ ! $num_user =~ ^[0-9]+$ ]] && echo "ERROR 504! T-T" && echo "Digite um NÙMERO opoha .i." && exit 1 

# -le == less or equal 
# -ge == greater or equal
[[ $num_user -gt 10 || $num_user -lt 1 ]] && echo "ERROR 404! o.O" && echo "Número NÃO se encontra entre 1 e 10!" && exit 1 


# respostas válidas...

# -q == equal (igual)
[[ $num_user -eq 5 ]] && echo "Número 5 encontrado! :DD" && exit 0 

# -lt == less than (menos que)
[[ $num_user -lt 5 ]] && echo "Número MENOR que 5!! ;-;" && exit 0

# -gt = greater than (maior que)
[[ $num_user -gt 5 ]] && echo "Número MAIOR que 5!! :O" && exit 0
