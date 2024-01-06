source /etc/bash.bashrc.d/complete-alias/complete_alias

source /etc/bash.bashrc.d/common

complete -F _complete_alias "${!BASH_ALIASES[@]}"
