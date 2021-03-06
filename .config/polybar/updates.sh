#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))

# to list the glyphs xfd -fa "Wuncon Siji"
# To copy the character printf "\ue0aa\n"

if [ "$updates" -gt 0 ]; then
    echo "$updates_arch  $updates_aur"
else
    echo ""
fi
