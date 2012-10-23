#!/bin/sh
echo 'Checking for commands required.'

is_exists(){
  if type $1 >/dev/null 2>&1; then
    echo "$1 found."
    return 0
  else
    echo "$1 not found."
    return 1
  fi
}

echo 'git'
if ! is_exists 'git'; then
  echo "Setup suspended."
  exit 1
fi

echo 'Checking for commands required...Done.'
# Do not exit here to continue script that included this file.
