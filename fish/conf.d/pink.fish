# --- Syntax highlighting ---
set -g fish_color_normal ffd1db              # Text
set -g fish_color_command f38ba8             # Pink -> commands
set -g fish_color_keyword f38ba8             # Pink -> keywords (if, for, etc.)
set -g fish_color_quote cc99aa               # Mauve -> strings
set -g fish_color_redirection ff9fb5         # Flamingo -> > < |
set -g fish_color_end e6a3b5                 # Subtext -> ; &
set -g fish_color_error b85068               # Maroon -> syntax errors
set -g fish_color_param e6a3b5               # Subtext -> arguments/params
set -g fish_color_comment b85068             # Overlay1 -> # comments
set -g fish_color_selection --background=651024   # Surface2 bg for selected text
set -g fish_color_search_match --background=4d0a1a  # Surface1 bg for search matches
set -g fish_color_operator ff9fb5            # Flamingo -> && || etc.
set -g fish_color_escape ffe4ec              # Rosewater -> \n \t etc.
set -g fish_color_autosuggestion cc99aa      # Overlay0 -> ghost text
set -g fish_color_cancel b85068              # Maroon -> ^C

# --- Valid/invalid path underlining ---
set -g fish_color_valid_path ffd1db --underline
set -g fish_color_cwd f38ba8                 # Pink -> prompt cwd
set -g fish_color_cwd_root b85068            # Maroon -> cwd when root

# --- Autosuggestion / completion pager ---
set -g fish_pager_color_progress c85f74      # Overlay2
set -g fish_pager_color_prefix f38ba8        # Pink
set -g fish_pager_color_completion ffd1db    # Text
set -g fish_pager_color_description a53b52   # Overlay1
set -g fish_pager_color_selected_background --background=4d0a1a  # Surface1

# --- Misc ---
set -g fish_color_user f38ba8                # Pink -> username in default prompt
set -g fish_color_host e6a3b5                # Subtext -> hostname
set -g fish_color_host_remote ff9fb5         # Flamingo -> remote hostname
set -g fish_color_status b85068              # Maroon -> exit status
