#OH_MY_POSH=$(dirname -- "$( readlink -f -- "$0"; )")/oh-my-posh
OH_MY_POSH=/etc/bash.bashrc.d/oh-my-posh

eval "$(${OH_MY_POSH} init bash --config /etc/bash.bashrc.d/themes/${OHMYPOSH_THEME}.omp.json)"

