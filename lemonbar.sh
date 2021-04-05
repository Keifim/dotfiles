#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

datetime() {
	date +%A\ %B\ %d-%m-%y\ %H:%M:%S
}
battery() {
	cat /sys/class/power_supply/BAT1/capacity
}

ram_usage() {
	free | grep 'Mem' | awk '{print substr(($3+$5+$6)/1024/1024,1,length($3)-3)}'
}
ram_total() {
	free | grep 'Mem' | awk '{print substr($2/1024/1024,1,length($2)-4)}'
}

swap_usage() {
	free | grep 'Swap' | awk '{print substr(($3/1024/1024),1,length($2)-3)}'	
}
swap_total() {
	free | grep 'Swap' | awk '{print substr($2/1024/1024,1,length($2)-4)}'
}

cpu_usage() {
	mpstat | grep all | awk '{print substr($3,1,length($3)-3)}'
}

workspace() {
	bspc query -D -d focused --names
}

while true; do
    BAR_INPUT="
			%{l}$(workspace)
			🔋Battery:$(battery)%
			%{r}$(datetime)
			%{c}RAM USAGE: $(ram_usage)gb/$(ram_total)gb
			SWAP USAGE: $(swap_usage)gb/$(swap_total)gb
			CPU USAGE: $(cpu_usage)%
		"
    echo $BAR_INPUT
    sleep 1
done
