
# Docker shortcuts
alias dc='docker container'
alias dls='docker image ls'
alias dps='docker ps -a --format "table {{.ID}}\t│ {{.Image}}\t│ {{.Names}}\t│ {{.Status}}"'
dsh(){docker exec -it $1 /bin/bash}
alias drma='docker ps -a --format "table {{.Names}}" | awk "(NR>1)" | xargs -I % docker container rm % --force && dps'
alias drm='docker container rm --force '


# FN+Left -> Home  FN+Right -> End
bindkey "\033[H" beginning-of-line; bindkey "\033[F" end-of-line
bindkey "\033[1;9D" backward-word; bindkey "\033[1;9C" forward-word 

# ll
alias ll='ls -lah'

export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="amuse"
HIST_STAMPS="yy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme

# zsh-sintax
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fortune | cowsay

echo ""
