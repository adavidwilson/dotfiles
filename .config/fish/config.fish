# Environment Variables

# XDG Base Directories
set -x -g XDG_CONFIG_HOME $HOME/.config
set -x -g XDG_CACHE_HOME $HOME/.cache
set -x -g XDG_DATA_HOME $HOME/.local/share

# Default Apps
set -x -g EDITOR nvim
set -x -g VISUAL nvim
set -x -g SUDO_EDITOR nvim
set -x -g BROWSER brave

# GnuPG
set -x -g GNUPGHOME $XDG_DATA_HOME/gnupg
if status --is-interactive
  set -x GPG_TTY (tty)
  set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
  gpgconf --launch gpg-agent
end

# Less
set -x -g LESSKEY $XDG_CONFIG_HOME/less/lesskey
set -x -g LESSHISTFILE $XDG_CACHE_HOME/less/history

# Pass
set -x -g PASSWORD_STORE_DIR $XDG_DATA_HOME/pass
set -x -g PASSWORD_STORE_KEY C68C64655593ABAF
set -x -g PASSWORD_STORE_SIGNING_KEY 5758E2EE0AD3B1912AF652EBC68C64655593ABAF

# Rust
set -x -g CARGO_HOME $XDG_DATA_HOME/cargo
set -x -g RUSTUP_HOME $XDG_DATA_HOME/rustup

# Terminfo
set -x -g TERMINFO $XDG_DATA_HOME/terminfo
set -x -g TERMINFO_DIRS $TERMINFO:/usr/share/terminfo

# VSCode
set -x -g VSCODE_PORTABLE $XDG_DATA_HOME/vscode

# Xorg
set -x -g XAUTHORITY $XDG_RUNTIME_DIR/Xauthority


# Path
fish_add_path $HOME/.local/bin
fish_add_path $CARGO_HOME/bin


# Abbreviations

abbr -a -g vim nvim
abbr -a -g startx startx $XDG_CONFIG_HOME/X11/xinitrc
abbr -a -g c git --git-dir=$HOME/Documents/Repos/adavidwilson/dotfiles --work-tree=$HOME


# Completions
fzf_key_bindings
