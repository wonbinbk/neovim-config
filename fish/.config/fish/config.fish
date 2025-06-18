# On WSL, there's no systemd (although it can be enabled)
# So we set this variable to somewhere temporary and writable
set -gx XDG_RUNTIME_DIR "/tmp/xdg-runtime-dir-$USER"
mkdir -p $XDG_RUNTIME_DIR
chmod 700 $XDG_RUNTIME_DIR

if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
$HOME/.local/bin/mise activate fish | source

# Shortcut to browse projects
function pj
    set selected (find ~/open_source ~/garmin -maxdepth 1 -mindepth 1 -type d 2>/dev/null \
        | fzf --prompt="Select project: " --preview='ls --color=always -F {}' --height=40%)
    if test -n $selected
        cd $selected
        zoxide add $selected
    end
end

# Source fzf.fish if any
if test -f ~/.fzf.fish
    source ~/.fzf.fish
end

# Accept suggestion with Ctrl + \
bind "ctrl-\\" accept-autosuggestion
fzf_configure_bindings --directory=\cp
