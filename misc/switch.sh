#!/bin/bash
lang=("us" "es" "fr")
lang_file=~/.config/bspwm/misc/lang
default_lang=us

log() {
    echo $1>>/tmp/switch.log
}

next() {
    local lang_file=$1
    local default_lang=$2

    if [ ! -e $lang_file ]; then
        echo $default_lang>$lang_file
    fi

    selected=$(cat $lang_file)
    log "selected lang: $selected"
    if [ -z "$selected" ]; then
        selected=$default_lang
    fi
    length=${#lang[@]}
    for (( i = 0; i < $length; i++)); do
        if [[ ${lang[$i]} == $selected ]]; then
            log "selected language match: $selected"
            let next="($i+2) % $length"
            log "next item index: $next (length: $length)"
            if [[ $next -gt $length ]]; then
                log "index out of array bounds"
                exit -1
            fi

            selected=${lang[$next]}
            log "next selection is: $selected"

            if [ -z "$selected" ]; then
                log "no language selected"
                exit -2
            fi
            echo $selected > $lang_file
            ~/.config/bspwm/misc/select.sh $selected
            exit
        fi
    done
}

next $lang_file $default_lang
