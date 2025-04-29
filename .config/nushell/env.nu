# env.nu
#
# Installed by:
# version = "0.103.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

# welcome
$env.config.show_banner = false

# autocompletion
$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu

# path
$env.PATH = ($env.PATH | prepend "/home/fd/.local/bin")

# clash
$env.https_proxy = "http://127.0.0.1:7890"
$env.http_proxy = "http://127.0.0.1:7890"
$env.all_proxy = "socks5://127.0.0.1:7890"

# editor
$env.EDITOR = "nvim"

# zoxide
zoxide init --cmd cd nushell | save --force ~/.config/nushell/zoxide.nu

# key
source .private.nu

