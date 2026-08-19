set -gx XDG_CONFIG_HOME "$HOME"/.config
set -gx XDG_CACHE_HOME  "$HOME"/.cache
set -gx XDG_DATA_HOME   "$HOME"/.local/share
set -gx XDG_STATE_HOME  "$HOME"/.local/state

set -gx CARGO_HOME  "$HOME/.local/lib/cargo"
set -gx RUSTUP_HOME "$HOME/.local/lib/rustup"

set -gx PAGER  ov
set -gx EDITOR nvim
set -gx VISUAL $EDITOR

set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -gx SSH_AUTH_SOCK "/run/user/1000/ssh_agent.sock"
set -gx WINEPREFIX    "$XDG_DATA_HOME/wineprefixes/default"
set -gx GNUPGHOME     "$XDG_DATA_HOME"/gnupg

set -e DISPLAY

not status is-interactive && return

set -g fish_greeting
set -g fish_history_derivative true

# some helper vars to make accessing easier
set fconf $__fish_config_dir
set fgen  $__fish_config_dir/fun-gen
set nconf $XDG_CONFIG_HOME/niri
set bins  $HOME/.local/bin

set -gx WGETRC                "$XDG_CONFIG_HOME"/wgetrc
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/npmrc
set -gx RIPGREP_CONFIG_PATH   "$XDG_CONFIG_HOME"/ripgrep/config
set -gx MYSQL_HISTFILE        "$XDG_STATE_HOME"/mariadb_history

# aurutils actually opens a directory, so use nvim instead.
set -gx AUR_PAGER $EDITOR
set -gx AUR_PACMAN_AUTH doas

