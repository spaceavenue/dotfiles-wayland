#!/usr/bin/env fish
function fish_user_key_bindings
	# aur
	abbr -a aurs 'aur search -k NumVotes'    # aur package search
	abbr -a auri 'aur search -i -k NumVotes' # aur package info
	
	abbr -a kill-orphans 'doas pacman -Rns -- (pacman -Qdtq)'  # remove orphans

	# sudo -> uwu (which is just doas lmao)
	abbr -a sudo uwu

	# better utils
	abbr -a cd  'z'
	abbr -a cdl 'zl'

	abbr -a cat 'bat'
	abbr -a man 'ban'

	abbr -a l   'eza'
	abbr -a lg  'eza --git'
	abbr -a lgi 'eza --git --git-ignore'
	abbr -a lt  'eza --tree -L3'
	abbr -a lc  'clear; eza'
	
	# note: the -g flag displays operation progress and only exists for uutils-coreutils versions of cp, mv and rm.
	abbr -a mv  'mv -gvi'
	abbr -a cp  'cp -gavi'
	abbr -a rm  'rm -gIdr'
	abbr -a rmf 'rm -gfdr'

	abbr -a grep 'rg'

  abbr -a dusty 'dust -b -d 1'

	# convenience
  abbr -a gl   'lazygit'
	abbr -a gc   'git clone'
  abbr -a gco  'git commit'
	abbr -a gp	 'git push'
	abbr -a gpl  'git pull'
	abbr -a gplr 'git pull --rebase'
	abbr -a gri	 'git rebase -i'
	abbr -a gs   'git status'
  abbr -a gsw  'git switch'

	abbr -a b  'btop'
	abbr -a sb 'uwu btop'
  abbr -a y  'yazi'

	abbr -a bt       'bluetoothctl connect'
	abbr -a btdc     'bluetoothctl disconnect'
	abbr -a wificon  'iwctl station wlan0 connect'
	abbr -a wifilist 'iwctl station wlan0 get-networks'
  
  abbr -a ctl   'systemctl'
  abbr -a jctl  'journalctl'
	abbr -a uctl  'systemctl --user'
	abbr -a ujctl 'journalctl --user'
end
funcsave fish_user_key_bindings
