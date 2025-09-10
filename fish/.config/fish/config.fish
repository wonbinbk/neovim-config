if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx PATH $HOME/.local/bin $HOME/.fzf/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $PATH /usr/local/go/bin
set -gx IGNOREEOF 3

zoxide init fish | source
~/.local/bin/mise activate fish | source

# Shortcut to browse projects
function pj
    set selected (fd -td -tl  -d1 --full-path '/home/phanthai/garmin/' ~/garmin | fzf)

    if test -n $selected
        cd $selected
        zoxide add $selected
    end
end

function git_msg_hook
    set gitdir (git rev-parse --git-dir)
    printf "git dir: %s\n" "$gitdir"
    set commit_msg "$gitdir/hooks/commit-msg"
    if test -e "$commit_msg"
        printf "File exists: %s\n" "$commit_msg"
        return
    end
    curl -k -o "$commit_msg" https://gerrit.marine.garmin.com/code-review/static/commit-msg
    chmod +x "$commit_msg"
end

# Source fzf.fish if any
if test -f ~/.fzf.fish
    source ~/.fzf.fish
end

# Accept suggestion with Ctrl + \
bind "ctrl-\\" accept-autosuggestion
# Disable Ctrl-d binding of fish shell which will delete-or-exit and will exit
# shell unintentionally
bind "ctrl-d" delete-char
# This is enable using Ctrl-P to open file fuzzily because the normal way
# Ctrl-Alt-F is not supported when using via ssh from freaking Windows
fzf_configure_bindings --directory=\cp
