#!/bin/bash

get_connected_devices() {
    echo -e "Connected Devices"
    lsusb
}

get_connected_devices
