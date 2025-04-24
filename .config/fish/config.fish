## Set values
# Hide welcome message & ensure we are reporting fish as shell
set fish_greeting

## Starship prompt
if status --is-interactive
   source ("/usr/bin/starship" init fish --print-full-init | psub)
end

## Run fastfetch if session is interactive
# if status --is-interactive && type -q fastfetch
#    fastfetch
# end

# path
set -U fish_user_paths /home/fd/.local/bin

# set default application
set -gx EDITOR nvim

# paru package manager
alias prs 'paru -S'
alias prss 'paru -Ss'
alias prrsn 'paru -Rsn'
alias prrsc 'paru -Rsc'
alias prsyu 'paru -Syyu'

# editor
alias v 'nvim'

# file manage
alias r 'ranger'

# git
alias lg 'lazygit'

# ls pro
alias ls 'exa'
alias ll 'ls -l'
alias la 'ls -a'
alias lla 'ls -la'
alias lt 'ls -T'

# clash
set -x https_proxy http://127.0.0.1:7890
set -x http_proxy http://127.0.0.1:7890
set -x all_proxy socks5://127.0.0.1:7890

# cd pro
zoxide init --cmd cd fish | source
