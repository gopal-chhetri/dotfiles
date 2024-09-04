if xrandr | grep "$sm connected"; then
    # Secondary monitor is connected
    echo "Secondary monitor detected. Running script..."
    
    # Your script here
    set $fm eDP-1
    set $sm HDMI-1-1
    include $HOME/.config/i3/workspaces.conf

fi
