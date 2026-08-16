#!/usr/bin/env fish

function fish_git_prompt
  set -l branch (command git branch --show-current 2>/dev/null)

  if test -z "$branch"
      set branch (command git rev-parse --short HEAD 2>/dev/null)
  end

  test -n "$branch"; or return

  set -l format $argv[1]
  test -z "$format"; and set format "(%s)"

  printf $format $branch
end
funcsave fish_git_prompt

function fish_prompt
  set -l last_status $status

  set_color normal cba6f7
  echo -n '['

  set_color normal ffabab --bold
  echo -n ' '

  set_color normal ffd1db --bold
  echo -n $USER

  set_color normal cba6f7
  echo -n ' on '
  
  set_color normal f38ba8 --bold
  echo -n (prompt_hostname)

  set_color normal cba6f7
  echo -n ' in '

  set_color normal ffabab
  echo -n (prompt_pwd -d 3 -D 3)

  set -l branch (fish_git_prompt)
  if test -n "$branch"
    set_color normal cba6f7
    echo -n ' under '

    set_color normal f38ba8
    echo -n $branch
  end

  set_color normal cba6f7
  echo -n ']'

  echo
  echo -n '󱞩  '
end
funcsave fish_prompt

function fish_right_prompt
  set -l last_status $status
  
  echo -n -e "\033[s"
  
  # move cursor up
  echo -n -e "\033[1A"
  set_color normal cba6f7
  echo -n '['
  
  set_color normal ffabab
  echo -n $history[1] | string split -f 1 ' '

  set_color normal cba6f7
  echo -n ' took '
  
  set_color normal f5c2e7
  echo -n (math $CMD_DURATION / 1000)'s'

  set_color normal cba6f7
  echo -n ' with '
  
  set_color normal ffabab
  echo -n 'e.c.' $last_status

  set_color normal cba6f7
  echo -n ']'
  
  # move cursor down
  set_color normal
  echo -n -e "\033[1u"
end
funcsave fish_right_prompt

