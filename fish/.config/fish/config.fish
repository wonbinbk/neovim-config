if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
mise activate fish | source

# Shortcut to browse projects
function pj
    set selected (fd . --type d --follow /home/phanthai/garmin | fzf)
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
