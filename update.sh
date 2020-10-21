#!/bin/bash
BASE_PATH=$(pwd)

function random_str() {
	local RV=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $1 | head -n 1)
	echo $RV
}

# Sublime Text 3
if [ ! -d "$BASE_PATH/sublime-text-3" ]; then
	mkdir "$BASE_PATH/sublime-text-3"
fi
cp -r "$HOME/.config/sublime-text-3/Packages/User/." "$BASE_PATH/sublime-text-3/."

# Terminator
if [ ! -d "$BASE_PATH/terminator" ]; then
	mkdir "$BASE_PATH/terminator"
fi
cp "$HOME/.config/terminator/config" "$BASE_PATH/terminator/."
sed -i -e '/^.*directory =.*/d' "$BASE_PATH/terminator/config"
