#!/usr/bin/env fish
alias --save dot-conf="git -C ~/.config"
alias --save dot-script="git -C ~/.local/bin/"

alias --save run0="run0 --background="
alias --save uwu="doas" # :3

# add a config file blease
alias --save eza="eza --long --all --sort modified --binary --time modified --time-style '+%y-%m-%d %H:%M' --icons=always"

alias --save man="man -T utf8 -O width=$COLUMNS"

# bat-extras eat your heart out
function ban --wraps 'man' --description "pipe mandoc output to bat"
	set -l BAT_OPTS --language=man --paging=always --style=grid
	if command man -w $argv >/dev/null 2>&1
	    man $argv | col -bx | bat $BAT_OPTS
	else
	    man $argv
	end
end
funcsave ban

alias --save bless="bat -p --paging=always"

function bead --wraps "bat"
	bat --line-range :$argv[1] $argv[2..]
end
funcsave bead

function bail --wraps "bat"
	bat --line-range -$argv[1]: $argv[2..]
end
funcsave bail

function funcdestroy --wraps "functions -e" --description "destroy a function"
	functions -e $argv
	for func in $argv
		funcsave $func
	end
end
funcsave funcdestroy

function zl --wraps "z" --description "cd into a dir and list contents"
	z $argv[1] && eza
end
funcsave zl

function rf --wraps "rg" --description "search and pipe output of rg into fzf"
	rg --color=always --line-number --no-heading --smart-case $argv |
		fzf --ansi \
		  --color "hl:-1:underline,hl+:-1:underline:reverse" \
		  --delimiter : \
		  --preview 'bat --color=always {1} --highlight-line {2}' \
		  --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
		  --bind 'enter:become(nvim {1} +{2})'
end
funcsave rf

function ytm-album --wraps "yt-dlp"
	yt-dlp -4 --format="ba[ext=m4a]"/ba --extract-audio --audio-format m4a --no-overwrites --embed-metadata --embed-thumbnail --ppa "ThumbnailsConvertor:-lavfi crop=ih:ih" -o "%(album)s/%(track_number,playlist_index)s %(title)s.%(ext)s" $argv
end
funcsave ytm-album

function crop_thumb
	mkdir -p tmp_out
    for file in *.m4a
		ffmpeg -i "$file" -map_metadata 0 -vf "crop=720:720" -c:v mjpeg -disposition:v attached_pic -c:a copy "tmp_out/$file" && mv "tmp_out/$file" "$file"
    end
    rmdir tmp_out
end
funcsave crop_thumb
