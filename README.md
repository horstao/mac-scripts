# Mac Scripts

1 - Install Brew:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


2 - Install Spectacle App:

brew install fortune cowsay wget htop zsh-syntax-highlighting
brew install --cask spectacle


3 - Install iTerm
https://iterm2.com/


4 - Fix Home and End shortcuts:
	
	On iTerm: 
	Go to Profiles / Open Profiles / Keys
	Set Cmd + left_arrow_key to Send Hex Code 001
	Set Cmd + right_arrow_key to Send Hex Code 005



5 - Install Oh-My-Zsh:

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


6 - Configure Oh-My-Zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo 'source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc 

p10k configure

