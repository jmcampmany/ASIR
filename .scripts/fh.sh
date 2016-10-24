#!/bin/bash
URL=("http://servus.inf/~diegov/FH/Tema%201/"
"http://servus.inf/~diegov/FH/Tema%202/"
"http://servus.inf/~diegov/FH/Tema%203/"
"http://servus.inf/~diegov/FH/Tema%204/"
"http://servus.inf/~diegov/FH/Tema%205/"
"http://servus.inf/~diegov/FH/Tema%206/"
"http://servus.inf/~diegov/FH/Tema%207/"
"http://servus.inf/~diegov/FH/Tema%208/"
"http://servus.inf/~diegov/FH/Tema%209/")
DIRECTORY="/media/juanbeca/sandisk/curso/fh"
for i in $URL
do
	wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $DIRECTORY $i
done