# rebinding CAPSlock to Bksp
setxkbmap -option caps:backspace

# Setting touchpad options

Mouse=`xinput list |grep -i Touchpad | awk -F= '{ print $2}'| awk '{print $1}'| awk 'BEGIN{ RS = "" ; FS = "\n" }{print $1}'`

# macOS like scrolling
xinput --set-prop $Mouse "libinput Natural Scrolling Enabled" 1

# tap to click
xinput --set-prop $Mouse "libinput Tapping Enabled" 1

# Increase Mouse Sensitivity
xinput set-prop $Mouse "libinput Accel Speed" .5

picom -b &

feh --randomize --bg-fill ~/wallpapers/*
