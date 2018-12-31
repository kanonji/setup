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

if this_os_is mac; then
    source ./settings/mac.sh
fi

echo '==============='
echo 'Setup...Done.'
echo '==============='
echo ''
