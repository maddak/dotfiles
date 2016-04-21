#
# ~/.bashrc
#

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
[[ $- != *i* ]] && return

PS1="\W > " #PS1='[\u@\h \W]\$ '

#export PATH=$PATH:PATH
export HISTSIZE="1000000" #500
export HISTFILESIZE="1000000" #500

alias ls='ls --color=auto --group-directories-first'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias rename='perl-rename -v'

alias rsync="rsync --progress"

alias aria2c="aria2c -c"

alias dllinks="vim $HOME/tmp/dllinks"
alias dllinks="vim $HOME/tmp/dllogs"

alias wifi="sudo wifi-menu"

alias resprivoxy="sudo systemctl restart privoxy.service"
alias reshttpd="sudo systemctl restart httpd.service"
alias resvsftp="sudo systemctl restart vsftpd.service"
alias resmysql="sudo systemctl restart mysqld.service"
alias ressshd="sudo systemctl restart sshd.service"
alias resxres="xrdb ~/.Xresources"
alias restor="sudo systemctl restart tor.service"
alias rescups="sudo systemctl restart cups-browsed.service"
alias resall="restor ; resprivoxy ; reshttpd ; resmysql ; resvsftp ; resvsftp ; rescups"

alias setproxy='export http_proxy="http://127.0.0.1:8118"'

#alias androidsdk="bash PATH"
#alias androidstudio="bash PATH"
