git_msg_hook() {
    gitdir=$(git rev-parse --git-dir)
    printf "git dir: %s\n" ${gitdir}
    commit_msg="${gitdir}/hooks/commit-msg"
    if [ -e "${commit_msg}" ]; then
        printf "File exists: %s\n" ${commit_msg}
        return
    fi
    curl -k -o ${commit_msg} https://gerrit.marine.garmin.com/code-review/static/commit-msg
    chmod +x ${commit_msg}
}
