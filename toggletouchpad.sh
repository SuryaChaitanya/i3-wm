#!/bin/bash
id=13
status=$(xinput --list-props $id | grep "Device Enabled" | cut -f 3)
if [ $status -eq 1 ]; then
	    xinput --disable $id
    else
	        xinput --enable $id
	fi
