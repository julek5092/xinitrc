xrandr --output DisplayPort-1 --pos 0x0 --output DisplayPort-0 --pos 1920x0 --output HDMI-A-0 --pos 3840x0

xinput set-prop 11 "libinput Accel Speed" -0.74
xinput set-prop 11 "libinput Accel Profile Enabled" 0 1
xset s off
xset s noblank
xset -dpms
xwallpaper --output DisplayPort-0 --zoom /home/julek/Documents/mountains/sun.jpg --output DisplayPort-1 --zoom /home/julek/Documents/mountains/sun.jpg

while true; do
        xsetroot -name "$(date '+%Y-%m-%d %H:%M')"
        sleep 2
done &

export GTK_THEME=Adwaita:dark
exec dbus-run-session dwm
