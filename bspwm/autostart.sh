#Set resolution
xrandr --size 1920x1200 &

#Start hotkey daemon
pgrep -x sxhkd > /dev/null || sxhkd &

#Start picom
picom --config $HOME/.config/picom/picom.conf &

#Start X wallpaper
feh --no-fehbg --bg-fill $HOME/.config/wallpaper.jpg &

#Start eww at this point

#Fix mouse cursor
xsetroot -cursor_name left_ptr &
