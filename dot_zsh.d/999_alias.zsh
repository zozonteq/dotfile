
alias vi="nvim"
alias vim="nvim"
alias ls="eza --icons"
alias sl="eza --icons"
alias la="eza --icons --all"
alias al="eza --icons --all"
alias ll="eza --icons --long --all"
alias cls="clear"
alias grep="rg"
alias grepa="rga"
alias tree="eza --icons --tree"

case "$(uname)" in 
  Darwin)
    alias reboot="sudo shutdown -r now"
    ;;
  Linux)
    alias reboot="sudo shutdown -r now"
    ;;
  CYGWIN*|MINGW32*|MSYS*|MINGW*)
    # windows
    ;;
  *)
    # unknown os
    ;;
esac
