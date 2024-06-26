alias s="symfony"
alias sc="symfony console"
alias clr="clear"
alias cat="bat"

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR="nvim"
export BAT_PAGING="always"

eval "$(tmuxifier init -)"
eval "$(starship init zsh)"
