# netkit
export NETKIT_HOME=/uml/netkit
export MANPATH=:$NETKIT_HOME/man
export PATH=$PATH:$NETKIT_HOME/bin


# sqlplus
export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib
export TNS_ADMIN=~
export NLS_LANG=SPANISH_SPAIN.AL32UTF8
export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME


# alias
alias iso="~/.scripts/iso.sh"
alias fh="~/.scripts/fh.sh"
alias gbd="~/.scripts/gbd.sh"
alias lm="~/.scripts/lm.sh"
alias par="~/.scripts/par.sh"
alias servus="iso&&fh&&gbd&&lm&&par"
alias web="chmod -R 705 ~/public_html"
alias sandisk="cd /media/juanbeca/sandisk/curso"
alias py="cd /media/juanbeca/sandisk/curso/lm/prog/python"
alias cuota="du -ahd1 | sort -hr"
alias fary="sqlplus64 juanmabc/1@fary"
alias aton="ssh jmbenitez@aton.inf"

alias add="git add -u"
alias commit="git commit -a --allow-empty-message -m ''"
alias push="git commit -a --allow-empty-message -m '';git push origin master"
alias pull="git pull origin master"

alias screenfetch="screenFetch/screenfetch-dev" 
alias trash="rm -r ~/.local/share/Trash/*"
alias halt="shutdown now"

# prompt
export PS1="\[\e[33;1m\]\[\e[31;1m\]\A\[\e[33;1m\] [\[\e[34;1m\]\w\[\e[33;1m\]]\[\e[0m\] "
