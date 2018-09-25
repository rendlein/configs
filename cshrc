source $HOME/.cshrc_alias

setenv TERM	xterm-256color

# A righteous umask
umask 		22

set path = ( /usr/local/cross/bin $HOME/.cargo/bin $HOME/.sys/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/.bin $HOME/.local/bin)

setenv	EDITOR		vim
setenv	PAGER		less
setenv	BLOCKSIZE	K
setenv	XDG_DATA_HOME $HOME/.config
setenv  PYTHONPATH  "/usr/local:/home/rendlein/.sys"
setenv  LC_ALL "C"
setenv  RUST_SRC_PATH "/usr/home/rendlein/.rustup/toolchains/nightly-x86_64-unknown-freebsd/lib/rustlib/src/rust/src"

# Colors for prompt
set     red="%{\033[1;31m%}"
set   green="%{\033[1;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[1;37m%}"
set     end="%{\033[0m%}"

setenv LC_ALL "C"

if ($?prompt) then
	# An interactive shell -- set some stuff up
	if ($uid == 0) then
		set user = root
	endif
	set prompt = "${blue}(${green}%/${blue})${red}[${blue}%m${red}]${white}:${end} "
    endif
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
