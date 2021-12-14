#!/bin/bash

#
# worcli.sh
#

#
# worcli es un script per automatitza terminals de treball, el escript esta adaptat
# per llansar en cicle un par de terminals preparades cromaticament i fixes
# Per aconseguir la maxima productivitat
# worcli treballa amb una paleta de colors seleccionada per a que la transparencia de les terminals
# no doni problemes de lectura.
#

# El script treballa amb la tecnologia de xfce4, 
# per a un us predeterminat la transparencia de les terminals ha de ser aprox 60%



##############
#   SCRIPT
##############

# El script treballa amb un archiu de memoria simple txt, 
# aquest guarda el valor del estat permetent que a cada execucio
# el programa llanse el estil seguent.


# Llegim el valor de la memoria i el guardem a la memoria IMPUT
INPUT=$(cat /home/emakt/Scripts/workcli/memoria.txt)

# 1 blink effect open terminal
# exo-open --launch TerminalEmulator --geometry 66x46+1276+195 --hide-scrollbar --hide-borders --hide-toolbar --color-bg="rgba(225,225,225,1)"  -e="sleep 0.1"
# exo-open --launch TerminalEmulator --geometry 123x57+0+0 --hide-scrollbar --hide-borders --hide-toolbar --color-bg="rgba(225,225,225,1)"  -e="ls"



if [ $INPUT -eq 0 ]; then  

# Sobreescrivim la memoria
echo "1" > /home/emakt/Scripts/workcli/memoria.txt

# Executem les terminals    ESCRITORI BLANC/FONS BLAU FOSC
exo-open --launch TerminalEmulator --geometry 66x46+1276+195 --hide-borders --hide-toolbar -T="WCLI -D Blanc" --working-directory=/home/emakt --color-text="white" --color-bg="rgba(1,7,20,0)"
exo-open --launch TerminalEmulator --geometry 123x57+0+0 --hide-borders --hide-toolbar -T="WCLI -E Blanc" --working-directory=/home/emakt --color-text="white" --color-bg="rgba(1,7,20,0)"


elif [ $INPUT -eq 1 ]; then

# Sobreescrivim la memoria
echo "2" > /home/emakt/Scripts/workcli/memoria.txt

# Executem les terminals   ESCRITORI GLOC /FONS ROIG
exo-open --launch TerminalEmulator --geometry 66x46+1276+195 --hide-borders --hide-toolbar -T="WCLI -D Groc" --working-directory=/home/emakt --color-text="yellow" --color-bg="rgba(21,9,15,0)"
exo-open --launch TerminalEmulator --geometry 123x57+0+0 --hide-borders --hide-toolbar -T="WCLI -E Groc" --working-directory=/home/emakt --color-text="yellow" --color-bg="rgba(21,9,15,0)"





elif [ $INPUT -eq 2 ]; then

# Sobreescrivim la memoria
echo "3" > /home/emakt/Scripts/workcli/memoria.txt

#Executem les terminals    ESCRITORI CIAN / FONS VERD FOSC
exo-open --launch TerminalEmulator --geometry 66x46+1276+195 --hide-borders --hide-toolbar -T="WCLI -D Cian" --working-directory=/home/emakt --color-text="cyan" --color-bg="rgba(7,11,1,0)"
exo-open --launch TerminalEmulator --geometry 123x57+0+0 --hide-borders --hide-toolbar -T="WCLI -E Cian" --working-directory=/home/emakt --color-text="cyan" --color-bg="rgba(7,11,1,0)"




elif [ $INPUT -eq 3 ]; then

# Sobreescrivim la memoria
echo "0" > /home/emakt/Scripts/workcli/memoria.txt

#Executem les terminals    ESCRITORI MAGENTA/FOSC BLAU
exo-open --launch TerminalEmulator --geometry 66x46+1276+195 --hide-borders --hide-toolbar -T="WCLI -D Magenta" --working-directory=/home/emakt --color-text="magenta" --color-bg="rgba(10,13,37,0)"
exo-open --launch TerminalEmulator --geometry 123x57+0+0 --hide-borders --hide-toolbar -T="WCLI -E Magenta" --working-directory=/home/emakt --color-text="magenta" --color-bg="rgba(10,13,37,0)"






else

printf" Algo a fallat "

fi









