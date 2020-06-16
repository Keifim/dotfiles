# Terminal
super+Return
	$TERMINAL
# Kill
super+{q,x}
	{i3-msg kill,xkill}
# reload/restart
super+shift+{c,r}
	pkill -USR1 -x sxhkd;\
	i3-msg {reload, restart}
# change focus or move
super+{_,shift+}{h,j,k,l,Left,Down,Up,Right}
	i3-msg {focus,move}{left,down,up,right, left,down,up,right}
# split
super+{shift+v,v}
	i3-msg split {horizontal,vertical}
# toggle fullscreen/floating and sticky winow
super+{space,shift+space,f}
	i3-msg {floating toggle sticky disable,floating toggle sticky toggle,fullscreen}
# switch or move window to workspace
super+{_,alt+,shift+}{}{1-9,0}
	i3-msg {workspace ,workspace 1,move container to workspace }{1-9,0}
# scratchpad
super+{_,shift+}{z}
	i3-msg {scratchpad show, move container to scratchpad}
# screenshot
@Print
	scrot -s $HOME/prints/$(date +%F_%T).png -e 'xclip -selection clipboard -t image/png < $f'
# Dmenu
super+d
	bash $HOME/.local/bin/dmenu.sh
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
super+shift+alt+g
	i3-msg gaps inner all set 14
