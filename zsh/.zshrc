# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd extendedglob nomatch notify HIST_IGNORE_ALL_DUPS
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

################################################
#          CompInstall (Autocomplete)          #
################################################

source ~/.config/zsh/autocomplete.zsh

################################################
################################################

################################################
#                   Others                     #
################################################

source ~/.config/zsh/trash.zsh
source ~/.config/zsh/als.zsh

################################################
################################################



export TERM=rxvt-unicode
export EDITOR=vim
export LD_LIBRARY_PATH=/usr/local/lib64

autoload -Uz colors && colors

eval `dircolors ~/.config/zsh/DirColors/dircolors.ansi-dark`

setopt PROMPT_SUBST

if [[ $(tty) == /dev/tty* ]]; then
    setfont ~/.local/share/fonts/Terminus/PSF/ter-powerline-v16b.psf.gz
fi

################################################
#                   Theme                      # 
################################################

source ~/.config/zsh/agnoster.zsh

################################################
################################################
