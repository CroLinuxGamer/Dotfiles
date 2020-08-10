#!/bin/bash
lista=`xinput list | grep -i 'mouse'`
listb=`xinput list | grep -i 'transceiver' | grep -i 'pointer'`
listc=`xinput list | grep -i 'receiver' | grep -i 'pointer'`

if [ ${#lista} -eq 0 ] && [ ${#listb} -eq 0 ] && [ ${#listc} -eq 0 ]; then
    exec `xinput enable ETPS/2\ Elantech\ Touchpad & notify-send "Touchpad enabled"`
else
    exec `xinput disable ETPS/2\ Elantech\ Touchpad & notify-send "Touchpad disabled"`
fi
