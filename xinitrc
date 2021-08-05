#statusbar
while true; do 
	xsetroot -name "$( date +"%F %R" )"
	sleep 1m 	# update dateTime once a minute.
done &

feh --bg-scale /home/ekim/wallpapers/nier1.jpg

xcompmgr -c &

exec dwm

