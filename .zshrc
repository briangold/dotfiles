alias tmux="TERM=screen-256color-bce tmux"
alias ls="ls -FG"
alias ack="ack-grep"

# History
export HISTSIZE=2000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

# nice colors for prompt
RESET=$'\033[0m'
RED=$'\033[38;5;167m'
GREEN=$'\033[38;5;71m'
BLUE=$'\033[38;5;111m'
YELLOW=$'\033[38;5;228m'
ORANGE=$'\033[38;5;173m'

# Stuff for git
parse_git_branch () {
    git branch 2> /dev/null | grep "*" | sed -e 's/* \(.*\)/ (\1)/g'
}

parse_git_status () {
    local GIT_STATUS="$(git status 2> /dev/null)"
    if [[ ! $GIT_STATUS =~ "working directory clean" ]]; then
        echo "%{$RED%}"
    else
        echo "%{$YELLOW%}"
    fi
}

function precmd() {
    PROMPT="%{$RED%}%n@%m%{$RESET%}:%{$GREEN%}%~"
    PROMPT+="$(parse_git_status)$(parse_git_branch) %{$RESET%}%# "
    export PROMPT
}

