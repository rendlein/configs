source $HOME/.cshrc_alias

setenv TERM	xterm-256color

# A righteous umask
umask 		22

set path = ($HOME/.sys/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/.bin $HOME/.cabal/bin)

setenv	EDITOR		vim
setenv	PAGER		less
setenv	BLOCKSIZE	K
setenv	XDG_DATA_HOME $HOME/.config

if ($?prompt) then
	# An interactive shell -- set some stuff up
	if ($uid == 0) then
		set user = root
	endif
	set prompt = "(%/): "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = 0
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
		bindkey "\e[3~" delete-char
	endif

endif

# vim: set filetype=tcsh : #
