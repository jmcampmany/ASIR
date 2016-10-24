#!/bin/bash
URL=("http://servus.inf/~xab/par/")
DIRECTORY="/media/juanbeca/sandisk/curso/par/"
for i in $URL
do
	wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $DIRECTORY $i
done