pj() {
    local selected
    selected="$(fd . --type d --follow ${HOME}/projects/ | fzf)"
    if [ -n "$selected" ]; then
        cd "$selected"
        zoxide add "$selected"
    fi
}
