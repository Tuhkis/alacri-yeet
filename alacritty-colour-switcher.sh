#!/bin/bash

config="$HOME/.config/alacritty/alacritty.yml"

declare -a options=(
"dark"
"metrostyle"
"spacemacs-light"
"ayu-mirage"
"dracula"
"hyper"
"iterm"
"spacer"
"quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 20 -p 'Themes')

case $choice in
	'dark')
	    cp ~/.config/alacritty/colourschemes/dark.yml ~/.config/alacritty/color.yml
	    ;;
	'metrostyle')
		cp ~/.config/alacritty/colourschemes/metrostyle.yml ~/.config/alacritty/color.yml
		;;
	'spacemacs-light')
		cp ~/.config/alacritty/colourschemes/spacemacs-light.yml ~/.config/alacritty/color.yml
		;;
	'ayu-mirage')
		cp ~/.config/alacritty/colourschemes/ayu-mirage.yml ~/.config/alacritty/color.yml
		;;
	'dracula')
		cp ~/.config/alacritty/colourschemes/dracula.yml ~/.config/alacritty/color.yml
		;;
	'hyper')
		cp ~/.config/alacritty/colourschemes/hyper.yml ~/.config/alacritty/color.yml
		;;
	'iterm')
		cp ~/.config/alacritty/colourschemes/iterm.yml ~/.config/alacritty/color.yml
		;;
	'spacer')
		cp ~/.config/alacritty/colourschemes/spacer.yml ~/.config/alacritty/color.yml
		;;
	'quit')
		echo "No theme chosen" && exit 1 ;;
esac
