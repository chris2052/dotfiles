#! /bin/bash
# Setup xsetwacom script for Intuos 3 9x12
# License: CC-0/Public-Domain license
# author: deevad
# additional information on ARCH-WIKI
# https://wiki.archlinux.org/title/Wacom_tablet#Pressure_curve

# Tablet definition
tabletpad="GAOMON Gaomon Tablet_M10KPRO Pad pad"
tabletstylus="GAOMON Gaomon Tablet_M10KPRO Pen stylus"
touchpad="GAOMON Gaomon Tablet_M10KPRO touch" #unsupported
dialpad="GAOMON Gaomon Tablet_M10KPRO pad" #unsupported
# Display all available option:
#xsetwacom get "$tabletstylus" all
#xsetwacom get "$tabletpad" all
#xsetwacom get "$touchpad" all
#xsetwacom get "$dialpad" all

# Reset
xsetwacom --set "$tabletstylus" ResetArea

# Map surface of the tablet to a monitor (in case of multiple)
# Note: get the name of the monitor with xrandr
xsetwacom --set "$tabletstylus" MapToOutput "DisplayPort-3"

# Auto proportional Mapping:
# xsetwacom get "$tabletstylus" Area
# default: 0 0 50800 31750
# Enter under the resolution of your monitor:
screenX=1920
screenY=1080
Xtabletmaxarea=50800
Ytabletmaxarea=28575
areaY=$(( $screenY * $Xtabletmaxarea / $screenX ))
xsetwacom --set "$tabletstylus" Area 0 0 "$Xtabletmaxarea" "$areaY"

# Stylus button:
#xsetwacom --set "$tabletstylus" Button 1 1 # default, to click and draw
#xsetwacom --set "$tabletstylus" Button 2 "key Control_L" # Ctrl = color picker
#xsetwacom --set "$tabletstylus" Button 3 3 # default (Right click)

# Tweaks
# Pressure curve:
# https://linuxwacom.github.io/bezier.html
xsetwacom --set "$tabletstylus" PressureCurve 0 0 100 100
# Softer
#xsetwacom --set "$tabletstylus" PressureCurve 0 10 40 85
# Configuration data trimming and suppression
# The event of this device are good; if you have CPU better to not filter
# them at operating system level to not loose any sensitivity.
# Minimal trimming is also good.
xsetwacom --set "$tabletstylus" Suppress 0 # data pt.s filtered, default is 2, 0-100
xsetwacom --set "$tabletstylus" RawSample 1 # data pt.s trimmed, default is 4, 1-20

# For left-handed mode (rotation):
#xsetwacom --set "$tabletstylus" Rotate half

# Buttons
# Note: touchpad around 10 button is not supported
#     +-----+
#     |  1  |
#     +-----+
#     |  2  |
#     +-----+
#     |  3  |
#     +-----+
#     |  8  |
#     +-----+
#     |  9  |
#     +-----+
# +---+-----+---+
# |             |
# |   +-----+   |
# |   | 10  |   |
# |   |     |   |
# |   +-----+   |
# |             |
# +---+-----+---+
#     +-----+
#     | 10  |
#     +-----+
#     | 11  |
#     +-----+
#     | 12  |
#     +-----+
#     | 13  |
#     +-----+
#     | 14  |
#     +-----+
#################################################
# Xournal++ App
xsetwacom --set "$tabletpad" Button 1 "key Control_L Shift_L P" # Pen
xsetwacom --set "$tabletpad" Button 2 "key Control_L 6" # Line
xsetwacom --set "$tabletpad" Button 3 "key Control_L 4" # Arrow
xsetwacom --set "$tabletpad" Button 8 "key Control_L 3" # Ellipse
xsetwacom --set "$tabletpad" Button 9 "key Control_L 2" # Rectangle

# xsetwacom --set "$tabletpad" Button 10 "key Control_L Shift_L A" # hand tool

xsetwacom --set "$tabletpad" Button 10 "key Control_L Shift_L H" # Highlighter
xsetwacom --set "$tabletpad" Button 11 "key Control_L Shift_L G" # select region 
xsetwacom --set "$tabletpad" Button 12 "key Control_L Shift_L V" # vertical space
xsetwacom --set "$tabletpad" Button 13 "key Control_L D" # new page after
xsetwacom --set "$tabletpad" Button 14 "key Control_L Z" # undo
