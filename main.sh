#!/usr/bin/env bash
echo '==============='
echo 'Starting setup.'
echo '==============='
echo ''

source ./parts/command_required.sh
source ./parts/dotfile.sh
source ./parts/homedir.sh
source ./parts/vim_plugins.sh
source ./parts/tmux_plugins.sh
source ./parts/anyenv.sh

if this_os_is mac; then
    source ./settings/mac.sh
fi
if this_is_wsl; then
    source ./settings/wsl.sh
fi

echo '==============='
echo 'Setup...Done.'
echo '==============='
echo ''

echo 'exec $SHELL -l'
exec $SHELL -l
