#!/bin/zsh

set -e

PATH_PREFIX="$0:P:h"

export ANTIBODY_HOME="${PATH_PREFIX}/antibody_home"
ANTIBODY="${ANTIBODY_HOME}/antibody"

pushd "$PATH_PREFIX"

trap 'popd' EXIT

if [ ! -x "${ANTIBODY}" ]; then
    curl -sfL https://git.io/antibody | sh -s - -b "$ANTIBODY_HOME"
fi

echo "Using $("${ANTIBODY}" home)"

"${ANTIBODY}" bundle < zsh_plugins.txt > zsh_plugins.sh

"${ANTIBODY}" update

if ! grep -q "source \"${PATH_PREFIX}/my-zshrc\"" zshrc; then
cat <<EOT >> ${PATH_PREFIX}/zshrc

source "${PATH_PREFIX}/my-zshrc"
EOT
fi

