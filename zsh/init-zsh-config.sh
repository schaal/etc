#!/bin/zsh

set -e

PATH_PREFIX="$0:P:h"

pushd "$PATH_PREFIX"

trap 'popd' EXIT

if ! grep -q "source \"${PATH_PREFIX}/my-zshrc\"" zshrc; then
cat <<EOT >> ${PATH_PREFIX}/zshrc

source "${PATH_PREFIX}/my-zshrc"
EOT
fi

