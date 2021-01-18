# Terminal
super+Return
	$TERMINAL
# Kill
super+{q,x}
	{i3-msg kill,xkill}
# reload/restart
super+shift+{c,r,e}
	pkill -USR1 -x sxhkd;\
	i3-msg {reload, restart, exit}
# change focus or move
super+{_,shift+}{h,j,k,l,Left,Down,Up,Right}
	i3-msg {focus,move}{left,down,up,right, left,down,up,right}
# split
super+{shift+v,v}
	i3-msg split {horizontal,vertical}
# toggle fullscreen/floating and sticky winow
super+{shift+space,space,f}
	i3-msg {floating toggle sticky disable,floating toggle sticky toggle,fullscreen}
# switch or move window to workspace
super+{_,alt+,shift+}{}{1-9,0}
	i3-msg {workspace ,workspace 1,move container to workspace }{1-9,0}
# scratchpad
super+{_,shift+}{minus}
	i3-msg {scratchpad show, move container to scratchpad}
super+{_,shift+}{z}
	i3-msg {scratchpad show, move container to scratchpad}
# screenshot
@Print
#	exec scrot -s $HOME/prints/$(date +%F_%T).png -e 'xclip -selection clipboard -t image/png < $f'
	exec maim -s $HOME/prints/$(date +%F_%T).png

# Dmenu and 3-dmenu-desktop
super+{d,shift+d}
	{bash $HOME/.local/bin/dmenu.sh,i3-dmenu-desktop}
# Resize window
super+alt+{h,j,k,l}
	i3-msg resize {grow width,shrink height,grow height,shrink width} 10 px or 10 ppt
super+alt+{Left,Down,Up,Right}
	i3-msg resize {grow width,shrink height,grow height,shrink width} 5 px or 5 ppt
super+alt+ctrl+{Left,Down,Up,Right}
	i3-msg resize {grow width,shrink height,grow height,shrink width} 20 px or 20 ppt
# change gaps
super+{_,shift+}{g}
	i3-msg gaps inner current {plus,minus} 4
super+shift+a
	i3-msg gaps inner current set 14
super+a
	i3-msg gaps inner current set 0
# discord
super+alt+c
	sh -c 'xhost si:localuser:cord && sudo -u cord discord'
super+c
	i3-msg '[class="discord"]' scratchpad show
# gimp

# container layout
super+{s,w,e} 
	i3-msg layout {stacking,tabbed,toggle split}
