#!/usr/bin/env bash
echo "============================================================"
echo -n "- O Usuário logado é: "
whoami
echo -n "- A máquina dele é: "
hostname
echo -n "- Está online a: "
uptime -p
echo -n "- O KERNEL da máquina dele é: "
uname -rms
echo "============================================================"
