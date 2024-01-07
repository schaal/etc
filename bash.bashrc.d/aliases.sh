source /etc/bash.bashrc.d/complete-alias/complete_alias

complete -F _complete_alias "${!BASH_ALIASES[@]}"
