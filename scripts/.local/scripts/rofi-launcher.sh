#!/bin/bash

if [ -z "$1" ]; then
	rofi -show drun
fi

rofi -show "$1"
