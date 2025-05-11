#!/usr/bin/env sh

# Restores the shader after screenshot has been taken
restore_shader() {
	if [ -n "$shader" ]; then
		hyprshade on "$shader"
	fi
}

# Saves the current shader and turns it off
save_shader() {
	shader=$(hyprshade current)
	hyprshade off
	trap restore_shader EXIT
}

save_shader # Saving the current shader

if [ -z "$XDG_PICTURES_DIR" ]; then
	XDG_PICTURES_DIR="$HOME/Pictures"
fi

scrDir=$(dirname "$(realpath "$0")")
swpy_dir="$XDG_PICTURES_DIR/screenshots/.swappy"
save_dir="${2:-$XDG_PICTURES_DIR/screenshots}"
save_file=$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')
temp_screenshot="/tmp/screenshot.png"

mkdir -p $save_dir
mkdir -p $swpy_dir
echo -e "[Default]\nsave_dir=$save_dir\nsave_filename_format=$save_file" >$swpy_dir/config

function print_error
{
	cat <<"EOF"
    ./screenshot.sh <action>
    ...valid actions are...
        p  : print all screens
        s  : snip current screen
        sf : snip current screen (frozen)
        m  : print focused monitor
EOF
}

case $1 in
p) # print all outputs
	notify-send "Screenshot of Screens" "Screenshot has been copies to your clipboard" -a grimblast -u low
	grimblast copysave screen $temp_screenshot && restore_shader && swappy -f $temp_screenshot
	;;
s) # drag to manually snip an area / click on a window to print it
	notify-send "Screenshot of Area" "Screenshot has been copies to your clipboard" -a grimblast -u low
	grimblast copysave area $temp_screenshot && restore_shader && swappy -f $temp_screenshot
	;;
sf) # frozen screen, drag to manually snip an area / click on a window to print it
	notify-send "Screenshot of frozen Area" "Screenshot has been copies to your clipboard" -a grimblast -u low
	grimblast --freeze copysave area $temp_screenshot && restore_shader && swappy -f $temp_screenshot
	;;
m) # print focused monitor
	notify-send "Screenshot of Screen" "Screenshot has been copies to your clipboard" -a grimblast -u low
	grimblast copysave output $temp_screenshot && restore_shader && swappy -f $temp_screenshot
	;;
*) # invalid option
	print_error ;;
esac

rm "$temp_screenshot"

if [ -f "${save_dir}/${save_file}" ]; then
	notify-send -a "t1" -i "${save_dir}/${save_file}" "saved in ${save_dir}"
fi
