xrandr --output DisplayPort-1 --pos 0x0 --output DisplayPort-0 --pos 1920x0 --output HDMI-A-0 --pos 3840x0
xinput set-prop 11 "libinput Accel Speed" -0.90
xset s off
xset s noblank
xset -dpms
#picom --log-level error &

while true; do
    xsetroot -name "$(date '+%a %b %d, %Y - %H:%M') | $(hostname)"
    sleep 1
done &


export GTK_THEME=Adwaita:dark
xwallpaper --output DisplayPort-0 --zoom /home/julek/Documents/f.jpg --output DisplayPort-1 --zoom /home/julek/Documents/f.jpg
exec dbus-run-session dwm
