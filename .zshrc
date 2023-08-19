# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ashut/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# End of lines added by compinstall
autoload -U colors && colors
PROMPT='%B%F{240}%~%f%b %# '
RPROMPT='%(?.%F{green}√.%F{red}%?)%f %m'

# these colors went missing when we switched from bash to zsh
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# after this are my own system specic entries.

# alias ll='ls -lart'
alias ll='exa -lar -snew'
alias d='cd ~/development'
alias git_server='ssh git@10.0.0.21'
alias cp='\cp -ip'
alias rm='\rm -rf'
alias upgrade='sudo apt update && sudo apt full-upgrade && sudo apt autoremove'
# alias vim=hx
alias vim=nvim
alias speed='speedtest-cli'
alias git_g='switch_git_to_gmail.sh'
alias git_o='switch_git_to_outlook.sh'
alias git_y='switch_git_to_yahoo.sh'
alias todo='todo_in_rust ~/TODO'
alias zshc='vim ~/.zshrc'


# zsh-syntax-highlighting plugin load
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# export PATH=$PATH:/home/ashut/.nvm/versions/node/v16.13.1/bin/
export PATH=$PATH:/home/ashut/tools/bin/

# starship prompt - the RUST based feature rich prompt
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

