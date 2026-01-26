#!/usr/bin/env bash

###########################################################
# CONVERSÃO DE RESÍDUOS NO FORMATO DO VMD EM .PML (PYMOL) #
# LARISSA BASTOS, 26/01/2026                              #
###########################################################

echo "Digite a seleção de resíduos no formato do VMD (ex: r 2 3 4 5):"
read -r input

# Remove o prefixo "r" ou "r "
input="${input#r }"
input="${input#r}"

# Substitui espaços por "+"
output="resi ${input// /+}"

echo
echo "Seleção para PyMOL:"
echo "$output"
