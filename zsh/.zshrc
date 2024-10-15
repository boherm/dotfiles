autoload -U compinit; compinit

alias s="symfony"
alias sc="symfony console"
alias clr="clear"
alias cat="bat"
alias fix_ps_classic="cd themes/classic/_dev/ && npm uninstall node-sass && npm install --save-dev sass && cd ../../.."
alias ec="cd ~/dotfiles && nvim"
alias gra="python3 /Users/bHermans/Grammalecte-fr-v2.1.1/grammalecte-cli.py"
alias ps-csf="./vendor/bin/php-cs-fixer fix"
alias ps-stan="./vendor/bin/phpstan analyse -c phpstan.neon.dist --xdebug -vvv"

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/go/bin:$HOME/.tmuxifier/bin:$PATH"
export EDITOR="nvim"
export BAT_PAGING="always"

eval "$(tmuxifier init -)"
eval "$(starship init zsh)"
