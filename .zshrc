# -*- sh -*-

# Disabling MULTIOS option - The MULTIOS option means that echo something >&1 | other_command will output to FD 1 and pipe the output to other_command, rather than only piping it. To turn this off, run unsetopt MULTIOS.
unsetopt MULTIOS

# Use /bin/sh when no terminal is present
[[ ${TERM:-dumb} != "dumb" ]] || exec /bin/sh
[ -t 1 ] || exec /bin/sh

# Execute tmux if available and if we have some configuration for it
#(( $+commands[tmux] )) && \
#    [[ -f ~/.tmux.conf && \
#             $PPID != 1 && \
#             $$ != 1 && \
#             $TERM != linux && \
#             $TERM != screen* && \
#             -z $TMUX ]] && \
#    exec tmux

export ZSH=/Users/malipat/.zsh
#ZSH=${ZSH:-${ZDOTDIR:-$HOME}/.zsh}
fpath=($ZSH/functions $ZSH/completions $fpath)

[[ $ZSH_NAME == "zsh-static" ]] && [[ -d /usr/share/zsh-static ]] && {
    # Rewrite /usr/share/zsh to /usr/share/zsh-static
    fpath=(${fpath/\/usr\/share\/zsh\//\/usr\/share\/zsh-static\/})
}

# Autoload add-zsh-hook if available
autoload -U is-at-least
{ autoload -U +X add-zsh-hook || unset -f add-zsh-hook } 2> /dev/null

__() {
    for config_file ($ZSH/rc/*.zsh) source $config_file
    [ ! -e $ZSH/env ] || . $ZSH/env
} && __

_vbe_setprompt
unset __


alias ..='cd ..'
alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-cache'
alias upgrade='sudo apt-get upgrade'
alias update='sudo apt-get update'
alias desk='cd ~/Desktop'
alias down='cd ~/Downloads'
alias c='clear'

## aliases for file listings
alias ls='ls -G'
alias ll="ls -al"
alias l.="ls -d .* -G"
### Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
#
## Start calculator with math support
alias bc='bc -l'
#
## handy short cuts #
alias h='history'
alias j='jobs -l'
alias sourcezsh='source ~/.zshrc'
#
## vim as default
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
#
## show open ports
alias openports='netstat -tulanp'
#
## Buffalo cse servers
alias timberlake='ssh smalipat@timberlake.cse.buffalo.edu'
alias euston='ssh smalipat@euston.cse.buffalo.edu'
alias embankment='ssh smalipat@embankment.cse.buffalo.edu'
alias underground='ssh smalipat@underground.cse.buffalo.edu'
alias highgate='ssh -X smalipat@highgate.cse.buffalo.edu'
#
##tmux shortcuts
alias tmuxn='tmux new -s'
alias tmuxat='tmux at'
alias tmuxt='tmux at -t'
alias tmuxls='tmux ls'
alias tmuxkill='tmux kill-session -t'
#
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#
#
#
eval "$(ssh-agent -s)"


#macport environment variables
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export DISPLAY=:0.0

# Brazil Path
export PATH=$BRAZIL_CLI_BIN:$PATH

# Cloud Desktop
alias cloudssh='ssh malipat@dev-dsk-malipat-2c-a7a5d5fb.us-west-2.amazon.com'

# PhantomJS
export PHANTOMJS_BIN=`which phantomjs`

# git commands
alias onelinelog='git log --pretty=oneline'

# brazil commands
alias bb='brazil-build'
alias bbr='brazil-build release'
alias bbs='brazil-build synthesize'

# workspace specific config
alias useservervs='brazil ws use --versionSet GuardDutyConsoleServer/development'
alias usewebappvs='brazil ws use --versionSet GuardDutyConsoleWebApp/development'

export P4CONFIG=.p4config
