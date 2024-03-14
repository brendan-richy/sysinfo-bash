#!/bin/bash

get_screen_info() {
    resolution=$(xrandr | grep current | awk '{print $8, $9, $10}' | awk '{ print substr( $0, 1, length($0)-1 ) }')
    de=$(echo $XDG_CURRENT_DESKTOP)
    
    echo -e "Resolution:" $resolution
    echo -e "Desktop Environment:" $de
}

get_screen_info
