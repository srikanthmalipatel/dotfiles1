# Path to your oh-my-zsh installation.
export ZSH=/Users/SrikanthMalipatel/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="srikanth"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

PROMPT_DIRTRIM=3

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward 
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

antigen bundle rimraf/k
antigen apply

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
alias box1start='VBoxManage startvm Box-1 --type headless'
alias box1save='VBoxManage controlvm Box-1 savestate'
alias box1stop='VBoxManage controlvm Box-1 poweroff'
#
alias box2start='VBoxManage startvm Box-2 --type headless'
alias box2save='VBoxManage controlvm Box-2 savestate'
alias box2stop='VBoxManage controlvm Box-2 poweroff'
#
alias eboxstart='VBoxManage startvm Eudyptula --type headless'
alias eboxsave='VBoxManage controlvm Eudyptula savestate'
alias eboxstop='VBoxManage controlvm Eudyptula poweroff'
#
alias ministart='VBoxManage startvm Mininet-VM --type headless'
alias minissave='VBoxManage controlvm Mininet-VM savestate'
alias ministop='VBoxManage controlvm Mininet-VM poweroff'
#
## ON/OFF hidden files
alias show='defaults write com.apple.finder AppleShowAllFiles YES'
alias hide='defaults write com.apple.finder AppleShowAllFiles OFF'
#
##ssh commands
alias sshbox1='ssh -p 2000 box1@localhost'
alias sshbox2='ssh -p 2100 box1@localhost'
alias sshebox='ssh -p 2200 eudyptula-box@localhost'
alias sshmini='ssh  mininet@192.168.56.102'
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
alias sshLatex='ssh  -v -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem -R 52698:localhost:52698 ubuntu@54.158.90.114'
alias uploadresume='scp -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem resume.tex ubuntu@52.91.27.170:~/rm2'
alias downloadresume='scp -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem ubuntu@52.91.27.170:~/rm2/resume.pdf .'
#
alias getStats='scp -i ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem ubuntu@52.91.27.170:~/simulations/trace.tr .'

# HAXM kernel module loading and unloading
alias haxmstop='sudo kextunload -bundle-id com.intel.kext.intelhaxm'
alias haxmstart='sudo kextload -bundle-id com.intel.kext.intelhaxm'
alias haxmstat='kextstat | grep intel'
export PATH=$PATH:~/.android/avd:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools
alias exportInst0='sshfs ubuntu@52.91.27.170:/home/ubuntu ~/Inst0 -o IdentityFile=~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem'
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#
#
#
eval "$(ssh-agent -s)"
ssh-add ~/keys/ubuntu_ubuntu_54_211_96_244_NV.pem
