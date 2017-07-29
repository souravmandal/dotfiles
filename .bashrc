# Use '>|" to clobber
set -o noclobber

# miscellaneous aliases
alias	cd..="cd .."
alias 	cl=clear
alias	df="df -m"
alias	free="free -m"
alias   gr=grep
alias	la="ls --color=auto -lAFh"
alias 	ll="ls --color=auto -lFh"
alias   ls="ls --color=auto"
alias 	pa="ps auwx"
alias	cave-resolve="cave --log-level silent resolve --slots installed-or-best --no-follow-installed-build-dependencies --no-follow-installed-dependencies --continue-on-failure if-satisfied --show-option-descriptions none --show-descriptions none --permit-downgrade '*/*'"
alias	cave-show='cave --log-level silent show -1s -k IUSE'
alias	cave-uninstall="cave --log-level silent uninstall --purge '*/*'"
alias 	cfg-update="cfg-update --paludis"

# Terminal window
case "$TERM" in
	*term*|*rxvt*)
		case "$DISPLAY" in
			:0.0)
				#export PS1="\[\033]0;\u:<\w>\007\]\[\033[01;35m\]\t\[\033[01;33m\] > \[\033[00m\]" 
				#export PS2="\[\033]0;\u:<\w>\007\]\[\033[01;35m\]\t\[\033[01;33m\] > \[\033[00m\]" 
				export PS1="\[\033]0;\u:<\w>\007\]\n\[\033[01;33m\]  >  \[\033[00m\]" 
				export PS2="\[\033]0;\u:<\w>\007\]\[\033[01;33m\]  > >  \[\033[00m\]" 
			;;
			*)
				export PS1="\[\033]0;\u@\h:<\w>\007\](\t) > " 
				export PS2="\[\033]0;\u@\h:<\w>\007\](\t) >> " 
			;;
		esac
	;;
	*)
		export PS1="\u:<\w> " 
		export PS2="\u:<\w>> " 
	;;
esac 

