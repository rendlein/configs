# $FreeBSD: release/9.1.0/share/skel/dot.cshrc 242850 2012-11-10 06:05:04Z eadler $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

source $HOME/.cshrc_alias
source $HOME/.cshRadio

alias h		history 25
alias j		jobs -l
alias ls	/bin/ls -G
alias grep	/usr/bin/grep --color=auto
alias lsa	ls -a
alias lsl	ls -l

setenv TERM	rxvt

# A righteous umask
umask 		22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/.bin)

setenv	EDITOR		vim
setenv	PAGER		less
setenv	BLOCKSIZE	K
setenv	XDG_DATA_HOME '/home/voleur/.config' 

if ($?prompt) then
	# An interactive shell -- set some stuff up
	if ($uid == 0) then
		set user = root
	endif
	set prompt = "(%/): "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif
	bindkey "\e[3~" delete-char
# .cshrc - csh resource script, read at beginning of execution by each shell
