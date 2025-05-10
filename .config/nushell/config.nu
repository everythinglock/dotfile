# config.nu
#
# Installed by:
# version = "0.103.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

# path
"~/.local/bin" | path expand

$env.config = {
    edit_mode: emacs
    keybindings: [
        {
            name: left
            modifier: control
            keycode: char_h
            mode: emacs
            event: { send: left name: left }
        },
        {
            name: right
            modifier: control
            keycode: char_l
            mode: emacs
            event: { send: right name: right }
        },
    ],
}

## paru package manager
alias prs = paru -S
alias prss = paru -Ss
alias prrsn = paru -Rsn
alias prrsc = paru -Rsc
alias prsyu = paru -Syyu
## editor
alias v = nvim
## git
alias lg = lazygit

# ls
alias ll = ls -l
alias la = ls -a
alias lla = ls -la
def lsw [...rest] { ls | where $rest }

# starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# zoxide
source ~/.config/nushell/zoxide.nu

# aider
def ai [] {
    let CONFIG_DIR = $"($env.HOME)/.config/aider"

    if (".aider.conf.yml" | path exists) {
        $env.AIDER_CONF = ".aider.conf.yml"
    } else {
        $env.AIDER_CONF = $"($CONFIG_DIR)/.aider.conf.yml"
    }

    if (".aider.model.metadata.json" | path exists) {
        $env.AIDER_MODEL_METADATA = ".aider.model.metadata.json"
    } else {
        $env.AIDER_MODEL_METADATA = $"($CONFIG_DIR)/.aider.model.metadata.json"
    }

    ^aider --config $env.AIDER_CONF --model-metadata-file $env.AIDER_MODEL_METADATA
}
alias aige = ^aider --model gemini-exp

def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != "" and $cwd != $env.PWD {
		cd $cwd
	}
	rm -fp $tmp
}

# autocompletion
source ~/.cache/carapace/init.nu
