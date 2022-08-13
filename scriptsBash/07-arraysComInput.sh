#!/bin/bash
# ----------------------------------------------------------------------------------------
# Script   : Exemplo de trabalho com ARRAYS e interação por Input
# Descrição: 
# Versão   : 0.1
# Autor    : Wellison Bertelli <wellison.bertelli@hotmail.com>
# Data     : 03/08/2021
# Licença  : GNU/GPL v3.0
# ----------------------------------------------------------------------------------------
# Uso:
# ----------------------------------------------------------------------------------------

clear

echo "\
Exemplo de trabalho com arrays indexadas...
"
frutas=("Banana" "Laranja" "Abacate" "Limão" "Cereja" "Abacaxi")
cores=("Amarela" "Amarela" "Verde" "Verde" "Vermelha" "Amarela")

read -p "Digite um número entre 0 e 5: " num

# testando se o número corresponde ao esperado...

[[ ! $num =~ ^[0-5]$ ]] \
    && echo -e "\nNúmero INVÁLIDO! expectativa: entre 0 e 5!!"\
    && exit 1

echo "
Você escolheu ${frutas[$num]}, que é uma fruta ${cores[$num]}
"

exit 0
