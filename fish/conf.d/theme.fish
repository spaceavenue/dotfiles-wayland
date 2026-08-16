# --- Core Text & Environment ---
set -g fish_color_normal ffd1db # Base text color
set -g fish_color_cancel cc99aa # Color for the ^C indicator

# --- Comments ---
set -g fish_color_comment 6e6a86 --italics     # Muted purple-grey for comments

# --- Functions / Methods / Commands ---
set -g fish_color_command f38ba8 # Core commands
set -g fish_color_keyword f38ba8 # Shell keywords
set -g fish_color_quote cba6f7   # Strings and quoted arguments

# --- Arguments, Options, and Variables ---
set -g fish_color_param ffd1db   # Regular command parameters
set -g fish_color_option ffd1db  # Flags/options 
set -g fish_color_keyword f38ba8 # Redundant definition safety fallback

# --- Variable Assignments ---
set -g fish_color_assignment a6e3a1 # Variable assignments
set -g fish_color_user a6e3a1       # Usernames in standard contexts
set -g fish_color_host cba6f7       # Hostnames in standard contexts

# --- Punctuation, Delimiters, Operators ---
set -g fish_color_redirection 89b4fa # >, <, 2>&1, etc.
set -g fish_color_end 89b4fa         # Command separators
set -g fish_color_operator 89b4fa    # Parameter expansion/operators
set -g fish_color_escape cba6f7      # Escape characters

# --- Paths ---
set -g fish_color_valid_path ffd1db --underline # Valid system paths

# --- UI Feedback & In-line Selection ---
set -g fish_color_error cc99aa                     # Unknown commands or syntax errors
set -g fish_color_autosuggestion 6e6a86            # Inline history autocomplete suggestions
set -g fish_color_selection --background=6e6a86    # Selected text in the command line
set -g fish_color_search_match --background=6e6a86 # Matched text during history search

# --- Interactive Tab-Completion Menu  ---
set -g fish_pager_color_progress cc99aa    # The bottom progress bar for long lists
set -g fish_pager_color_prefix 89b4fa      # The part of the string you already typed
set -g fish_pager_color_completion cba6f7  # The rest of the string suggested by Fish
set -g fish_pager_color_description cc99aa # The command description text on the right

# --- Selected Completion Items ---
set -g fish_pager_color_selected_background --background=cc99aa # Highlighted row
set -g fish_pager_color_selected_prefix 18000f                  # Prefix color on the highlighted row
set -g fish_pager_color_selected_completion 18000f              # Completion color on the highlighted row
set -g fish_pager_color_selected_description 18000f             # Description color on the highlighted row

# --- Secondary/Alternating Completion Rows ---
set -g fish_pager_color_secondary_background normal
set -g fish_pager_color_prefix 89b4fa          # The part of the string you already typed
set -g fish_pager_color_completion cba6f7      # The rest of the string suggested by Fish
set -g fish_pager_color_description cc99aa     # The command description text on the right
