# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Use Neovim
alias vi="nvim"
alias vim="nvim"

# default to readable figures
alias df="df -h"
alias du="du -h"

# handy short cuts
alias h="history"
alias j="jobs -l"
alias htop="sudo htop"
alias btop="bpytop"
