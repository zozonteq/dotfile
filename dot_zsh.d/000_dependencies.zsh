export UNAME="$(uname)"
export PATH=$PATH:~/.bin
export XDG_CONFIG_HOME="$HOME/.config"

# install sheldon
[ ! -f ~/.bin/sheldon ] &&curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
      | bash -s -- --repo rossmacarthur/sheldon --to ~/.bin

eval "$(sheldon source)"
eval "$(starship init zsh)"
