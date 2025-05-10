eval "$(/opt/homebrew/bin/brew shellenv)"

PATH="/usr/local/bin:$PATH"

alias vi=nvim
alias vim=nvim

alias ls='ls --color=always'

alias ga='git add'
alias gar='git apply -R'
alias gc='git commit'
alias gch='git checkout'
alias gco='git checkout master && git fetch origin master && git rebase origin/master && git log HEAD~..HEAD'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD~'
alias gl='git log'
alias gp='git push -u origin HEAD'
alias gr='git reset'
alias gre='git rebase'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gt='git tag'
