set -gx XDG_CONFIG_HOME "$HOME"/.config
set -gx XDG_CACHE_HOME  "$HOME"/.cache
set -gx XDG_DATA_HOME   "$HOME"/.local/share
set -gx XDG_STATE_HOME  "$HOME"/.local/state
set -gx CARGO_HOME      "$HOME/.local/lib/cargo"
set -gx RUSTUP_HOME     "$HOME/.local/lib/rustup"
set -gx EDITOR          "/usr/bin/nvim"
set -gx VISUAL          $EDITOR
set -gx _JAVA_OPTIONS   "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -gx SSH_AUTH_SOCK   "/run/user/1000/ssh_agent.sock"
set -gx WINEPREFIX      "$XDG_DATA_HOME/wineprefixes/default"
set -gx DISPLAY         ""

not status is-interactive && return

set -g fish_greeting
set -g fish_history_derivative true

set fconf ~/.config/fish
set fgen $fconf/fun-gen

set -gx WGETRC "$XDG_CONFIG_HOME"/wgetrc
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/npmrc
set -gx RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME"/ripgrep/config

set -gx GNUPGHOME "$XDG_DATA_HOME"/gnupg

set -gx MYSQL_HISTFILE "$XDG_STATE_HOME"/mariadb_history

# set -gx PAGER "bat -p --paging=always"
set -gx PAGER ov

# bat gets confused because aurutils actually opens a directory.
# could be set to nvim? maybe?
set -gx AUR_PAGER yazi
set -gx AUR_PACMAN_AUTH doas

