#!/usr/bin/env bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
theme_option="@colors-base16"
default_theme="default-dark"

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
unset theme_option
unset default_theme
