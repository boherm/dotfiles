# zmodload zsh/zprof
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

alias t="task"
alias tt="taskwarrior-tui"
alias tm="timew"
alias s="symfony"
alias sc="symfony console"
alias clr="clear"
alias cat="bat"
alias fix-ps-classic="cd themes/classic/_dev/ && npm uninstall node-sass && npm install --save-dev sass && cd ../../.."
alias ec="cd ~/dotfiles && nvim"
alias gra="python3 /Users/bHermans/Grammalecte-fr-v2.1.1/grammalecte-cli.py"
alias ps-csf="./vendor/bin/php-cs-fixer fix"
alias ps-stan="./vendor/bin/phpstan analyse -c phpstan.neon.dist --xdebug -vvv"
alias k="kubectl"
alias d="docker"
alias git-perso="git config user.name boherm && git config user.email 18699562+boherm@users.noreply.github.com && git config user.signingkey FDD14592BDD032E1"

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/go/bin:$HOME/.tmuxifier/bin:$PATH"
export EDITOR="nvim"
export BAT_PAGING="always"

eval "$(tmuxifier init -)"
export STARSHIP_CONFIG=${HOME}/.config/starship.toml
eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"

# Scaleway CLI autocomplete initialization.
alias scw-autocomplete='eval "$(scw autocomplete script shell=zsh)"'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
# zprof
