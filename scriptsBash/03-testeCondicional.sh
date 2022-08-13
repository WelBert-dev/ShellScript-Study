#!/bin/bash

# Analizando se um comando é Builtin do bash ou não!


echo '=============================================================================='

help ls &> /dev/null

[[ $? -eq 0 ]] && echo "É Builtin!" || echo "Não é Builtin!"

echo '=============================================================================='

exit 0
