#!/usr/bin/env fish

fish_add_path "$HOME"/.local/bin/prog "$HOME"/.local/bin

function fish_config
end
funcsave fish_config

function fish_greeting
end
funcsave fish_greeting

function fish_command_not_found
    echo "*hand wave* `$argv[1]` is not the command you're looking for."
end
funcsave fish_command_not_found

function __fish_print_help --description 'Print help for a fish command using mandoc'
    set -l item $argv[1]
    test -z "$item"; and return 1

	set -lx MANPATH "$__fish_data_dir/man:" $MANPATH
    
	ban $item
end
funcsave __fish_print_help

