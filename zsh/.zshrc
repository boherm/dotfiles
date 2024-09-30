alias s="symfony"
alias sc="symfony console"
alias clr="clear"
alias cat="bat"
alias fix_ps_classic="cd themes/classic/_dev/ && npm uninstall node-sass && npm install --save-dev sass && cd ../../.."

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR="nvim"
export BAT_PAGING="always"

eval "$(tmuxifier init -)"
eval "$(starship init zsh)"
