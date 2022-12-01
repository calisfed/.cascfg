setopt auto_cd
cdpath=($HOME/projects $HOME)
cd ~

export ZSH="$HOME/.cascfg/oh-my-zsh"
export PATH="/home/$USER/.local/bin:$PATH"

hash -d home="/home/$USER"
hash -d cas="/home/$USER"
hash -d des="/c/users/$HOST/desktop"
hash -d usr="/c/users/$HOST"
hash -d host="/c/users/$HOST"

export myhttp="https://github.com/calisfed"
export myssh="git@github.com:calisfed"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

#
# source ~/.dotfiles/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.dotfiles/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# fpath=(~/.dotfiles/plugins/zsh-completions/src $fpath)

plugins=(
    sudo
    git
    rust
    python
    pip
    nvm
    zsh-autosuggestions
    zsh-syntax-highlighting
    pipenv
)

source $ZSH/oh-my-zsh.sh


# ALIAS
alias ls='exa --icons --group-directories-first'
alias la='exa --icons --group-directories-first --all'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias cas='/usr/bin/git --git-dir=$HOME/.cascfg/ --work-tree=$HOME'

# SET WINDOW TITLE
function set_win_title() {
    echo -ne "\033]0; ZSH \007"
}
precmd_functions+=(set_win_title)






# eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"


# EVAL STARSHIP
eval "$(starship init zsh)"



# EXPORT DISPLAY, CHOOSE 1 OUT OF 3

export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
# export DISPLAY="`sed -n 's/nameserver //p' /etc/resolv.conf`:0"
# export DISPLAY=$(ip route|awk '/^default/{print $3}'):0.0

# source /home/v/.config/broot/launcher/bash/br
#

# fnm
export PATH=/home/v/.fnm:$PATH
eval "`fnm env`"
