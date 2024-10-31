export UNAME="$(uname)"
export PATH=$PATH:~/.bin
export XDG_CONFIG_HOME="$HOME/.config"


autoload -Uz compinit && compinit

autoload colors
colors
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1 

# install sheldon
[ ! -f ~/.bin/sheldon ] &&curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
      | bash -s -- --repo rossmacarthur/sheldon --to ~/.bin

eval "$(sheldon source)"
eval "$(starship init zsh)"
