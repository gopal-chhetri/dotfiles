if xrandr -q | grep -i "HDMI-1-0 connected"; then
    set $fm eDP-1
    set $sm HDMI-1-0
    include $HOME/.config/i3/workspaces.conf
    xrandr --output $fm --primary --mode 1920x1080 --rotate normal --output $sm --mode 1920x1080 --rotate normal --right-of eDP-1

fi
