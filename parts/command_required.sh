#!/bin/sh
echo '-------------------------------'
echo 'Checking for commands required.'
echo '-------------------------------'
echo ''

is_exists(){
  if type $1 >/dev/null 2>&1; then
    echo "$1 found."
    return 0
  else
    echo "$1 not found."
    return 1
  fi
}

echo 'checking git...'
if ! is_exists 'git'; then
  echo "Setup suspended."
  exit 1
fi

echo '---------------------------------------'
echo 'Checking for commands required...Done.'
echo '---------------------------------------'
echo ''
# Do not exit here to continue script that included this file.
