# rebinding CAPSlock to Bksp
setxkbmap -option caps:backspace

# macOS like scrolling
xinput --set-prop 12 "libinput Natural Scrolling Enabled" 1

# tap to click
xinput --set-prop 12 "libinput Tapping Enabled" 1

# Debugging
# xinput list
# xinput --list-props 12
