#!/bin/sh

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

# start daemons
sxhkd &
urxvtd -q -f -o
compton &
stalonetray &

# start applications
redshift -c ~/.config/redshift/redshift.conf &
megasync &

# start scripts
./.fehbg &

# secure startup scripts
if [[ -d ~/sbin/ ]]; then
    for f in $(find ~/sbin/ -follow -type f -executable)
    do
        $f &
    done
fi

exec bspwm

