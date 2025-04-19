## Set values
# Hide welcome message & ensure we are reporting fish as shell
set fish_greeting

## Starship prompt
if status --is-interactive
   source ("/usr/bin/starship" init fish --print-full-init | psub)
end

## Run fastfetch if session is interactive
if status --is-interactive && type -q fastfetch
   fastfetch
end

# set default application
set -gx EDITOR nvim

# paru package manager
alias ys 'yay -S'
alias yss 'yay -Ss'
alias yrsc 'yay -Rsc'
alias ysyu 'yay -Syyu'

# editor
alias v 'nvim'

# explorer
alias r 'ranger'

# clash
set -x https_proxy http://127.0.0.1:7890
set -x http_proxy http://127.0.0.1:7890
set -x all_proxy socks5://127.0.0.1:7890

# cd pro
zoxide init --cmd cd fish | source
