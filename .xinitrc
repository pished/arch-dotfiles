#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# xrandr --output HDMI-0 --primary --mode 2560x1440 --rate 143 --pos 0x560 --output HDMI-1 --mode 2560x1440 --rate 143 --rotate right --pos 2560x0 --right-of HDMI-0 &

xrandr --output DVI-D-0 --off --output HDMI-0 --primary --mode 2560x1440 --pos 0x651 --rotate normal --output HDMI-1 --mode 2560x1440 --pos 2560x0 --rotate right --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off

# wal -R -a 90 &
exec bspwm
#exec i3
# exec startplasma-x11
# exec awesome

# Apply most recent pywal effect
# wal -i ~/img/wallpapers/ -o ~/.config/wal/wal-set
