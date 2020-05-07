# Created0 by newuser for 4.3.10

PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/sbin
PATH=$HOME/bin:$PATH
PATH=$HOME/local/bin:$PATH
PATH=$HOME/.pyenv/versions/anaconda3-4.1.0/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/texlive/2014/bin/x86_64-darwin:$PATH

PATH=/opt/local/sbin:/usr/local/texlive/2014/bin/x86_64-darwin:/usr/local/bin:/Users/yamamoriyuu/.pyenv/versions/anaconda3-4.1.0/bin:/Users/yamamoriyuu/local/bin:/Users/yamamoriyuu/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Globus/bin:/Library/Globus/sbin:/Library/TeX/texbin:/usr/sbin:/usr/bin:/usr/sbin:/Applications/gt5.2.5/bin:/Users/yamamoriyuu/bin:/Users/yamamoriyuu/mybin:/Users/yamamoriyuu/onedrive/Research/work/software/packmol

GLOBUS_LOCATION=/Applications/gt5.2.5
PATH=$PATH:$GLOBUS_LOCATION/bin
PATH=$PATH:~/bin
PATH=$PATH:~/mybin

##########################
# enviromental variables #
##########################

PAPER=$HOME/Dropbox/papers

AMBERHOME=$HOME/onedrive/Research/work/software/amber14
PATH=$PATH:$HOME/onedrive/Research/work/software/packmol

#WORK=$HOME/Box\ Sync/Research\ \(fromambertozen@gmail.com\)/mac/works
WORK=$HOME/onedrive/Research/work
PROG=$WORK/programs
SCRIPT=$WORK/scripts
FIGURE=$WORK/figures
Cspace=$PROG/C
Cppspace=$PROG/C++
Fortran90space=$PROG/Fortran
awkspace=$SCRIPT/awk
lispspace=$SCRIPT/lisp
perlspace=$SCRIPT/perl
phpspace=$SCRIPT/php
pythonspace=$SCRIPT/python
rubyspace=$SCRIPT/ruby
tclspace=$SCRIPT/tcl
Rspace=$SCRIPT/R
gnuplotspace=$SCRIPT/gnuplot

DOC=$HOME/Google\ ドライブ
DOCR=$DOC/Research
DOCa=$DOC/a_lifelog
DOCb=$DOC/b_Documents,Site,Blogs,etc
DOCf=$DOC/f_まとめ

LIB=$HOME/Copy
LIBDOC=$LIB/01_文書
LIBMUS=$LIB/97_音楽
LIBMOV=$LIB/98_動画
LIBPIC=$LIB/99_画像

INPUT=$HOME/calspa/input
CASP=$HOME/onedrive/Research/work/scripts/sh/calcspa
TEST=$HOME/test
RSPA=$HOME/Rspa
MLIB=$HOME/mylib
MINC=$HOME/myinclude
GMBX=$HOME/gomibako

#PATH=$PATH:$HOME/$SCRIPT/gnuplot
#PYTHONPATH=~/software/pymbar-2.0beta
PATH=/opt/local/bin:/opt/local/sbin:$PATH

export GLOBUS_LOCATION
export AMBERHOME
export PATH
export PYTHONPATH
unset USERNAME

#########################################
# export LDFLAGS='-xlinker -R$HOME/lib' #
#########################################

export WORK
export DATA
export PROG
export SCRIPT
export FIGURE

export DOC
export DOCR
export DOCa
export DOCb
export DOCf

export LIB
export LIBDOC
export LIBMUS
export LIBMOV
export LIBPIC

export INPUT
export CASP
export COMT
export COMA
export COMK
export RSPA
export MLIB
export MINC

export EDITOR=emacs

##########################
# enviromental variables #
##########################

##########################
# functions #
##########################

myrm() { mv $* $HOME/gomibako }
lp() { ls $(pwd)/$*  }
#ld() { ls -F ${1} | grep / }
ht() { head -${1} ${2} | tail -1  }
htn() { cat -n ${2} | head -${1} | tail -1  }

nc() { /bin/gawk '{if(NR=='${1}'){print NF}}' < ${2} } 	      

qdelall() {qdel $( q | grep yamamori | /bin/gawk \'BEGIN{FS=\".\";i=0}{print $1;++i}\')}
qi() {(q | grep $1  | gawk 'BEGIN{FS=" ";i=0}{print $1;++i}')}
qin() {echo $(q | grep $1  | gawk 'BEGIN{FS=" ";i=0}{print $1;++i}' | wc -l)}
#qpasstime 
ncs() {ncdump -h $1 | grep 'UNLIMITED'}
ncs2() {ncdump -h $1 | grep 'UNLIMITED' | cut -d " " -f6-7 }
ncss() { for f in $* ;do echo -n $f;  ncdump -h $f | grep 'UNLIMITED'; done }

cn() { cat  -n $1 > temp; mv temp $1 }
cutext() { echo $1 | cut -d "." -f1 }

#ps2pdfcrop() { ps2pdf $1 ; name=$(basename $1 .pdf) ; pdfcrop ${name}.pdf }

##########################
# functions #
##########################

##########################
# alias #
##########################

#alias "tleapff99=tleap -s -f /usr/local/amber7/dat/leap/cmd/leaprc.ff99"
#alias "xleapff99=xleap -s -f /usr/local/amber7/dat/leap/cmd/leaprc.ff99"
alias "tleapff99=tleap -s -f /usr/local/amber8/dat/leap/cmd/leaprc.ff99"
alias "xleapff99=xleap -s -f /usr/local/amber8/dat/leap/cmd/leaprc.ff99"

alias "q=qstat -u yamamori"
alias "qu=qstat -u "
#alias "qa=qstat -a"
alias "qa=qstat -u \"*\" "
alias "qmo=q | mo"
alias "qn=q | grep -G yamamori | wc -l"
alias "qnr=q | grep -G @ajisai | wc -l"
alias "qnode=q | grep -G yamamori | gawk 'BEGIN{i=0}{i=i+\$9}END{print i}'"
alias "qf=qstat -f"
alias "qq=qstat -q"
alias "sq=showq"
alias "cj=checkjob"
#alias "qdelall=qdel \$(q | grep yamamori | gawk 'BEGIN{FS=".";i=0}{print '$1';++i}')"

alias "a=alias"
alias "cpuinfo=cat /proc/cpuinfo"
alias "g=~/bin/gnuplot"
alias "g4.6=~/bin/gnuplot"
alias "g4.0=gnuplot"
alias "gnuplot4.6=~/bin/gnuplot"
#alias "l=ls -G --color=auto"
alias "l=ls -G"
#alias "l=ls "
alias "la=ls -a --color=auto"
alias "lt=ls -t -color=auto"
alias "lal=ls -al -color=auto"
alias "ll=ls -l -color=auto"
alias "lg=ls -G --color=auto ~/gomibako;du -hs"
alias "lc=ls -G --color=auto ~/calspa;du * -hs;du -hs"
alias "lsd=find . -maxdepth 1 -type d"
alias "j=jobs"
alias "p=pwd"
alias "mo=more"
alias "le=less"
alias "w=who"
alias "ta=tail"
alias "he=head"
alias "HM=date +"%H-%M""
alias "c=clear"
alias "ca=cat"
alias "comp=${COMPILE}/compile.sh"
alias "d=du -hs"
alias "dis=display"
alias "dateymd=date +"%Y-%m-%d""
alias "his=history"
alias "f=finger"
alias "gp=grep"
#alias "gv=grep -v"
#alias "ruby=~/ruby/bin/ruby"
#alias "rb=~/ruby/bin/ruby"
#alias "python=~/bin/python"
#alias "py=~/bin/python"
#alias "python=~/bin/python3.2"
#alias "py=~/bin/python3.2"
alias "s=source"
alias "em=$HOME/bin/emacs"
alias "e=$HOME/bin/emacs"
alias "t=top"
alias "txvf=tar xvf"
alias "rm=myrm"
alias "lcs=qstat -a | grep -G serial | wc -l"
alias "lcp=qstat -a | grep -G perallel | wc -l"
alias "m=${COMPILE}/makelib.sh"
alias "qg=q | grep -G"
alias "qj=q | grep -G ajisai"
alias "qr=q | grep @"
alias "qfg=qf | grep all.q@ajisai"
alias "R=~/bin/R"
alias "sourcez=source ~/.zshrc"
alias "sz=source ~/.zshrc"
alias "res=grep -A 5 RESIDUE_LABEL"
alias "v=vmd"
alias "version=cat/proc/version"
alias "val=valgrind -v --error-limit=no --leak-check=full"
alias "w3mgoogle=w3m -e http://www.google.co.jp"
#alias "w3mhateblog=w3m -e wagawasurenaba.hatenablog.com"
#alias "whileread=while read i ; do echo $i ; done < test"

alias "catdcd=~/software/vmd-1.9/plugins/LINUXAMD64/bin/catdcd4.0/catdcd"
alias "nekodcd=~/software/vmd-1.9/plugins/LINUXAMD64/bin/catdcd4.0/catdcd"

alias "sshlab=ssh -l yamamori gagagator.iam.u-tokyo.ac.jp"

alias "karin=ssh karin00"
alias "karin=ssh kusu"

alias "sshgaga=ssh -l yamamori gagagator.iam.u-tokyo.ac.jp"

alias "vmd=/Applications/VMD\ 1.9.2.app/Contents/vmd/vmd_MACOSXX86"

##########################
# alias #
##########################

fpath=(~/share/zsh/4.2.7/functions ${fpath})
autoload -U compinit
compinit

setopt auto_cd

#######################
# autoload predict-on #
# 		      #
# predict-on	      #
#######################

#PROMPT="%/%% "
#PROMPT2="%{[31m%}%/%%%{^[[m%} "
#SPROMPT="%{[31m%}%r is correct? [n,y.a,e]:%{^[]m%} "

### from TKMR-san ###

#export LANG=ja_JP.UTF-8
#export LANG=C

case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    PROMPT="%{[34m%}%/%%%{[m%} "
#   PROMPT="%{[34m%}%%[m%} "
#   RPROMPT="%{[32m%}[%d]%{[m%} "
    PROMPT2="%{[32m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

#############################################################################
# case "$TERM" in    xterm*|kterm*|rxvt*)				    #
#     PROMPT=$(print "%B%{\e[34m%}%m:%(5~,%-2~/.../%2~,%~)%{\e[33m%}%# %b") #
#     PROMPT=$(print "%{\e]2;%n@%m: %~\7%}$PROMPT") # title bar		    #
#     ;;								    #
#     *)								    #
#     PROMPT='%m:%c%# '							    #
#     ;;								    #
# esac									    #
#############################################################################

############################################################
# case "${TERM}" in					   #
# kterm*|xterm)						   #
#     precmd() {					   #
# #       echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007" #
#         echo -ne "\033]0;@${HOST%%.*}\007"		   #
#     }							   #
#     ;;						   #
# esac							   #
############################################################

#######################################################################
# case "$TERM" in 						      #
# xterm*|kterm*|rxvt*) 						      #
# function precmd () { 						      #
# # Shorten the path of pwd 					      #
# pwd=`pwd | \ 							      #
# perl -pe 's!$ENV{"HOME"}!~!;s!^(.{10,}?/)(.+)(/.{15,})$!$1...$3!'`  #
# PROMPT=$(print "%B%{\e[34m%}%m:${pwd}%{\e[33m%}%# %b") 	      #
# PROMPT=$(print "%{\e]2;%n@%m: %~^G%}$PROMPT") # title bar 	      #
# } ;; esac							      #
#######################################################################

case "$TERM" in    
    xterm*|kterm*|rxvt*)
    PROMPT=$(print "%B%{\e[34m%}%m:%(5~,%-2~/.../%2~,%~)%{\e[33m%}%# %b")
    PROMPT=$(print "%{\e]2;%n@%m: %~\7%}$PROMPT") # title bar    
    ;;
    *)
    PROMPT='%m:%c%# '
    ;;
esac

zmodload -i zsh/mathfunc

### from TKMR-san ###

export BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt hist_ignore_dups

setopt share_history

bindkey -e

[[ $EMACS = t ]] && unsetopt zle

bindkey "^P" history-beginning-search-backward

bindkey "^N" history-beginning-search-forward

autoload zmv
alias 'zmv=noglob zmv -W'
#autoload zcp
alias "zcp=noglob zmv -W -C"

autoload zed
