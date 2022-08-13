#!/bin/bash

# Testa se foi passaado 1 argumento:

msg="É preciso informar o nome de um comando válido!"

[[ $# -ne 1 ]] && echo $msg && exit 1

help $1 &> /dev/null

[[ $? -eq 0 ]] && echo "É BUILTIN" || echo "NÃO É BUILTIN! ;-;"

exit 0
