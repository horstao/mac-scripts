# Horst Scripts

# Docker shortcuts
alias dc='docker container'
alias dls='docker image ls'
alias dps='docker ps -a --format "table {{.ID}}\t│ {{.Image}}\t│ {{.Names}}\t│ {{.Status}}"'
dsh(){docker exec -it $1 /bin/bash}
dssh(){docker run  -it --rm --entrypoint sh $1 $2 $3 $4 $5 $6 $7 $8 $9}
alias drma='echo Removing ALL containers && docker ps -a --format "table {{.Names}}" | awk "(NR>1)" | xargs -I % docker container rm % --force && dps'
alias dirma='echo Removing ALL docker images && docker image ls -a --format "table {{.ID}}" | awk "(NR>1)" | xargs -I % docker image rm % --force && drma && dls'
alias drm='docker container rm --force '
x64_docker(){docker $1 --platform linux/amd64 $2 $3 $4 $5 $6 $7 $8 $9}

# Brew
alias brew_fix='brew upgrade && brew update && brew autoremove && brew cleanup --prune=all && brew doctor'
function ibrew() { echo "Brew for Intel x64 with Rosetta" &&  arch -x86_64 brew $@ ; }

# More scripts
alias ll='ls -lah'
alias izsh='arch -x86_64 zsh'

# FN+Left -> Home  FN+Right -> End
bindkey "\033[H" beginning-of-line; bindkey "\033[F" end-of-line
bindkey "\033[1;9D" backward-word; bindkey "\033[1;9C" forward-word 


export ZSH="$HOME/.oh-my-zsh"
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
