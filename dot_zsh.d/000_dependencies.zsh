export UNAME="$(uname)"
export PATH=$PATH:~/.bin
export XDG_CONFIG_HOME="$HOME/.config"


autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1 

# install sheldon
[ ! -f ~/.bin/sheldon ] &&curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
      | bash -s -- --repo rossmacarthur/sheldon --to ~/.bin

eval "$(sheldon source)"
eval "$(starship init zsh)"
