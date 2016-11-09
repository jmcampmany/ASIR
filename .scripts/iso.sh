#!/bin/bash
URL=("https://servus.inf/~diegov/ISO/")
DIRECTORY="/media/juanbeca/sandisk/curso/iso/"
for i in $URL
do
	wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" "PD" -P $DIRECTORY $i
done
