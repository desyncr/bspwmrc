#!/bin/bash
lang=$1
dunstify "Switching keyboard layout" "Selected layout: $lang" --replace=11235813
gsettings set org.gnome.libgnomekbd.keyboard layouts "['$lang']"
