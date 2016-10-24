#!/bin/bash
directory="/media/juanbeca/sandisk/curso/iso/"
function downloadISO() {
	local url
	url=("http://servus.inf/~diegov/ISO/Tema%201/"
	"http://servus.inf/~diegov/ISO/Tema%202/"
	"http://servus.inf/~diegov/ISO/Tema%203/"
	"http://servus.inf/~diegov/ISO/Tema%204/"
	"http://servus.inf/~diegov/ISO/Tema%205/"
	"http://servus.inf/~diegov/ISO/Tema%206/"
	"http://servus.inf/~diegov/ISO/Tema%207/"
	"http://servus.inf/~diegov/ISO/Tema%208/"
	"http://servus.inf/~diegov/ISO/Tema%209/")
	for i in $url
	do
		wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $directory $i
	done
}

function downloadFH() {
	local url
	url=("http://servus.inf/~diegov/FH/Tema%201/"
	"http://servus.inf/~diegov/FH/Tema%202/"
	"http://servus.inf/~diegov/FH/Tema%203/"
	"http://servus.inf/~diegov/FH/Tema%204/"
	"http://servus.inf/~diegov/FH/Tema%205/"
	"http://servus.inf/~diegov/FH/Tema%206/"
	"http://servus.inf/~diegov/FH/Tema%207/"
	"http://servus.inf/~diegov/FH/Tema%208/"
	"http://servus.inf/~diegov/FH/Tema%209/")
	for i in $url
	do
		wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $directory $i
	done
}

function downloadGBD() {
	url=("http://servus.inf/~jaime/GBD/")
	for i in $url
	do
		wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $directory $i
	done
}

function downloadLM() {
	local url
	url=("http://servus.inf/~jaime/LM/")
	for i in $url
	do
		wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $directory $i
	done
}

function downloadPAR() {
	url=("http://servus.inf/~xab/par/")
	for i in $url
	do
		wget --restrict-file-names=windows -N -r -np -nH --cut-dirs=2 --reject "index*" -P $directory $i
	done
}
x = $1
y = 
if $#>0
then
	case $ in
		"iso") downloadISO;;
		"fh") downloadFH;;
		"gbd") downloadGBD;;
		"lm") downloadLM;;
		"par") downloadPAR;;
	esac
else
	downloadISO
	downloadFH
	downloadGBD
	downloadLM
	downloadPAR
fi