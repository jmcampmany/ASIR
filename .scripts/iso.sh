#!/bin/bash
URL=("http://servus.inf/~diegov/ISO/Tema%201/"
"http://servus.inf/~diegov/ISO/Tema%202/"
"http://servus.inf/~diegov/ISO/Tema%203/"
"http://servus.inf/~diegov/ISO/Tema%204/"
"http://servus.inf/~diegov/ISO/Tema%205/"
"http://servus.inf/~diegov/ISO/Tema%206/"
"http://servus.inf/~diegov/ISO/Tema%207/"
"http://servus.inf/~diegov/ISO/Tema%208/"
"http://servus.inf/~diegov/ISO/Tema%209/")
DIRECTORY="/media/juanbeca/sandisk/curso/iso/"
for i in $URL
do
	wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $DIRECTORY $i
done
