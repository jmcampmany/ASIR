#!/bin/bash
URL=("https://servus.inf/~diegov/FH/")
DIRECTORY="/media/juanbeca/sandisk/curso/fh"
for i in $URL
do
	wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $DIRECTORY $i
done
