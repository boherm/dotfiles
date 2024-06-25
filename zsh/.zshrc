alias s="symfony"
alias sc="symfony console"
alias clr="clear"

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR="nvim"

eval "$(tmuxifier init -)"
eval "$(starship init zsh)"
