#!/bin/bash

LWDEVICE=`python -m sounddevice | grep jack | cut -c 3-4`

echo "[PortAudio]" > GlobalSettings.txt
echo "InputDeviceIndex=${LWDEVICE}" >> GlobalSettings.txt
echo "OutputDeviceIndex=${LWDEVICE}" >> GlobalSettings.txt

