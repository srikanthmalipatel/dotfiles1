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

export ZSH=/Users/SrikanthMalipatel/.zsh
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
#
## vim as default
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
#
## show open ports
alias ports='netstat -tulanp'
#
## virtualbox start and save
alias devboxstart='VBoxManage startvm Development-Box --type headless'
alias devboxsave='VBoxManage controlvm Development-Box savestate'
alias devboxstop='VBoxManage controlvm Development-Box poweroff'
#
alias sshdevbox='ssh -p 2000 box@localhost'
alias kodingvm='sudo ssh -o StrictHostKeyChecking=no smalipat@uskkce0ebfcc.smalipat.koding.io'
#
## Classes Directory Navigation
alias ir='cd ~/classes/Sem1/cs535'
alias algo='cd ~/classes/Sem1/cs531'
alias ml='cd ~/classes/Sem1/cs574'
alias mnc='cd ~/classes/Sem1/cs589'
alias os='cd ~/classes/Sem2/cs521'
alias ossrc='cd ~/classes/Sem2/cs521/vagrant/src'

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
#
alias sshLatex='ssh -X -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem -L 59001:localhost:5901 ubuntu@184.72.173.83'
alias uploadresume='scp -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem resume.tex ubuntu@52.91.27.170:~/rm2'
alias downloadresume='scp -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem ubuntu@52.91.27.170:~/rm2/resume.pdf .'
#
alias getStats='scp -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem ubuntu@52.91.27.170:~/simulations/trace.tr .'

# HAXM kernel module loading and unloading
alias haxmstop='sudo kextunload -bundle-id com.intel.kext.intelhaxm'
alias haxmstart='sudo kextload -bundle-id com.intel.kext.intelhaxm'
alias haxmstat='kextstat | grep intel'
export PATH=$PATH:~/.android/avd:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
alias exportInst0='sshfs ubuntu@52.91.27.170:/home/ubuntu ~/Inst0 -o IdentityFile=~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem'
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#
#
#
eval "$(ssh-agent -s)"
function mountAndroid { hdiutil attach /Volumes/Seagate\ Backup\ Plus\ Drive/Srikanth/android.dmg -mountpoint /Volumes/android; }
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx7g"


#macport environment variables
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export DISPLAY=:0.0
