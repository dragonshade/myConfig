#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#add font path
xset +fp /usr/share/fonts/local
xset fp rehash

#launch i3 wm
exec /usr/bin/i3


# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
