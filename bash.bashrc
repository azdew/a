if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

PS1='\$ '
alias new='clear; toilet -f slant GAN  XS | lolcat -a -p 1 -d 15 -s 100; date | lolcat -a -d 5 -s 40; echo ________________________________________________________________ | lolcat -a -d 75 -s 500'
alias ch='cd ..; cd usr; cd etc; nano bash.bashrc'
alias up='cd; cd a; sh up ;clear'
alias hackface='clear ;cd ;cd weeman ;python2 weeman.py'
alias clo='clear; toilet -f slant GOODBYE | lolcat -a -d 15 -s 50 -p 1; exit'
alias ubuntu='cd ;clear ;cd termux-ubuntu; ./start-ubuntu.sh'
aliad hackdt='clear ;cd ;cd a ;sh command'
clear
toilet -f slant GAN  XS | lolcat -a -d 15 -s 50 -p 1
date | lolcat -d 5 -a
termux-battery-status | lolcat -a -d 15 -s 75
echo ________________________________________________________________ | lolcat -a -d 150 -s 250
cd

