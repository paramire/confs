#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#. $(brew --prefix)/etc/bash_completion
#fi

# Create a JAVA_HOME variable, determined dynamically
# export JAVA_HOME=$(/usr/libexec/java_home)
# Add that to the global PATH variable
# export PATH=${JAVA_HOME}/bin:$PATH


# Set MYSQL 5.7 PATH
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# CONFIGURATION GIT-COMPLETION
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function gdl {
	git diff-less "$@" | less -r
}
function gll {
	git log --color=always "$@" | less -r
}
function gsf {
	git -c color.status=always status "$@" | less -r
}
function gs-all {
	git status -s |
	if [ ! -z $1 ]; then
		grep $1
	else
		cat
	fi |
	awk '{print $2}'
}
function gs-commit {
	git status --porcelain=v2 |
	if [ ! -z $1 ]; then
		grep $1
	else
		cat
	fi |
	awk '{ if( $2 != ".M" ) { print $9 } }'
}
function gs-uncommit {
	git status --porcelain=v2 -uno |
	if [ ! -z $1 ]; then
		grep $1;
	else
		cat
	fi |
	awk '{ if( $2 != "M." ) { print $9 } }'
}
function gs-deleted {
	git status --porcelain=v2 -uno |
	if [ ! -z $1 ]; then
		grep $1;
	else
		cat
	fi |
	awk '{ if( $2 == ".D" ) { print $9 } }'
}

function cd_gr {
	git_root=$(git rev-parse --show-toplevel 2>/dev/null);
	if [ $? -eq 0 ]; then
		cd $git_root;
	fi
}

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# LS CONFIGURATION
. "/home/anek/.local/share/lscolors.sh"
alias ll='ls -lh'

export VISUAL=vim
export EDITOR="$VISUAL"
