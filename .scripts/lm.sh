#!/bin/bash
URL=("http://servus.inf/~jaime/LM/")
DIRECTORY="/media/juanbeca/sandisk/curso/lm/"
for i in $URL
do
	wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 -P $DIRECTORY $i
done
