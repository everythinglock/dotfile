## Set values
# Hide welcome message & ensure we are reporting fish as shell
set fish_greeting

## Starship prompt
if status --is-interactive
    source ("/usr/bin/starship" init fish --print-full-init | psub)
end

# path
set -U fish_user_paths /home/fd/.local/bin

# set default application
set -x EDITOR nvim
set -x VISUAL nvim

# alias
## paru package manager
alias prs 'paru -S'
alias prss 'paru -Ss'
alias prrsn 'paru -Rsn'
alias prrsc 'paru -Rsc'
alias prsyu 'paru -Syyu'
## editor
alias v nvim
## file manage
## git
alias lg lazygit
## ls pro
alias ls exa
alias ll 'ls -l'
alias la 'ls -a'
alias lla 'ls -la'
alias lt 'ls -T'

# clash
set -gx https_proxy http://127.0.0.1:7890
set -gx http_proxy http://127.0.0.1:7890
set -gx all_proxy socks5://127.0.0.1:7890

# cd pro
zoxide init --cmd cd fish | source

# reload
function reload
    source ~/.config/fish/config.fish
    echo "Fish config reloaded!"
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
