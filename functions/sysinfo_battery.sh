#!/bin/bash

get_battery_info() {
    charge_state=$(acpi -b | awk '{print $3}' | awk '{ print substr( $0, 1, length($0)-1 ) }')
    percentage=$(acpi -b | awk '{print $4}' | awk '{ print substr( $0, 1, length($0)-1 ) }')
    life=$(acpi -b | awk '{print $5}' | awk '{ print substr( $0, 1, length($0)-1 ) }')

    echo -e "Charge Status:" $charge_state
    echo -e "Battery Percentage:" $percentage
    echo -e "Time Remaining:" $life
}

get_battery_info
