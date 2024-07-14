eval "$(/opt/homebrew/bin/brew shellenv)"

source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"


AWS_CONFIG_FILE="$HOME/programs/prod/contributing/aws-config"

PATH="/usr/local/bin:$PATH"

alias vi=nvim
alias vim=nvim

export ENGFLOW_MAIN_REPO=$HOME/programs/engflow
