# Mac Scripts

### 1 - Install Brew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2 - Install Some Brew apps:

```
brew install fortune cowsay wget htop zsh-syntax-highlighting
```

### 3 - Install iTerm2
https://iterm2.com/


### 4 - Fix Home and End shortcuts:
	
	On iTerm: 
	Go to Profiles / Open Profiles / Keys
	Set Cmd + left_arrow_key to Send Hex Code 001
	Set Cmd + right_arrow_key to Send Hex Code 005



### 5 - Install Oh-My-Zsh:

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 6 - Configure Oh-My-Zsh and Powerlevel10K

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo 'source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc 

p10k configure
```
