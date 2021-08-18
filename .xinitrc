#statusbar
while true; do 
	xsetroot -name "    CPU $(top -bn1 | grep load | awk '{printf "%.2f%%", $(NF-2)}') | RAM $(free -m | grep '^Mem' | awk '{print ($3/1000)"GB" }') | $( date +"%F %R" )"
	sleep 5s 	# how often to run.
done &

#xsetroot -name "CPU $(top -bn 1 | grep '^Cpu' | tr -d 'usy,' | awk '{print "user " $2 ", sys " $3}') | RAM $(free -m | grep '^Mem' | awk '{print $3"/"$2 }') | $( date +"%F %R" )"

#setroot -name "RAM $(free -m | grep '^Mem' | awk '{print $3"/"$2 }') | $( date +"%F %R" )"
#xsetroot -name "Memory $(free -m | grep '^Mem' | awk '{print "total: " $2 "MB used: " $3"MB"}') 
#| CPU $(top -bn 1 | grep '^Cpu' | tr -d 'usy,' | awk '{print "user " $2 ", sys " $3}') 
#| Uptime: $(uptime | awk '{print $3}' | tr -d ',') 
#| Now playing: $(ncmpcpp --now-playing | tr -d '(:[:digit:])') | $( date +"%F %R" )"


#xrandr --output DP1 --mode 2560x1440

feh --randomize  --bg-fill /home/ekim/wallpapers/*

xcompmgr -c &

xrdb ~/.Xresources

#xrandr --dpi 141

exec dwm

