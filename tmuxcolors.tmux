#!/usr/bin/env bash

if [ -n "$BASH_VERSION" ]; then
	script_path=${BASH_SOURCE[0]}
elif [ -n "$ZSH_VERSION" ]; then
	script_path=${(%):-%x}
fi
current_dir=${script_path%/*}
theme_option="@colors-base16"
default_theme=${BASE16_THEME_DEFAULT:-"default-dark"}

get_tmux_option() {
	local option="$1"
	local default_value="$2"
	local option_value="$(tmux show-option -gqv "$option")"
	if [ -z "$option_value" ]; then
		echo "$default_value"
	else
		echo "$option_value"
	fi
}

main() {
	local theme="$(get_tmux_option "$theme_option" "$default_theme")"
	tmux source-file "$current_dir/colors/base16-${theme}.conf"
}
main

unset current_dir
unset script_path
unset theme_option
unset default_theme
