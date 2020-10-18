#!/bin/sh

# color codes
INDIGO="%{F#4b0082}"
LGRAY="%{F#a9a9a9}"
DGRAY="%{F#696969}"
YELLOW="%{F#ffd700}"
ORANGE="%{F#ffa500}"
RST="%{F-}"

get_icon() {
    case $1 in
        # Icons for weather-icons
        01d) icon="$YELLOW$RST";; # clear sky day
        01n) icon="$INDIGO$RST";; # clear sky night
        02d) icon="";; # few clouds day
        02n) icon="";; # few clouds night
        03*) icon="$LGRAY$RST";; # scattered clouds
        04*) icon="$DGRAY$RST";; # broken clouds
        09d) icon="";; # shower rain day could be both
        09n) icon="";; # shower rain night
	10d) icon="";; # rain ( rain and sun )
        10n) icon="";; # rain night
        11d) icon="";; # thunderstorm day and night
        11n) icon="";;
        13d) icon="";; # snow day and night
        13n) icon="";;
        50d) icon="";; # mist
        50n) icon="";;
        *) icon=""; # ??? wilcard?

        # Icons for Font Awesome 5 Pro
        #01d) icon="";;
        #01n) icon="";;
        #02d) icon="";;
        #02n) icon="";;
        #03d) icon="";;
        #03n) icon="";;
        #04*) icon="";;
        #09*) icon="";;
        #10d) icon="";;
        #10n) icon="";;
        #11*) icon="";;
        #13*) icon="";;
        #50*) icon="";;
        #*) icon="";
    esac

    echo $icon
}

get_duration() {

    osname=$(uname -s)

    case $osname in
        *BSD) date -r "$1" -u +%H:%M;;
        *) date --date="@$1" -u +%H:%M;;
    esac

}

KEY="9420e5eb9b337922149383c335c3c0b1"
CITY=""
UNITS="metric"
SYMBOL="C"

API="https://api.openweathermap.org/data/2.5"

if [ -n "$CITY" ]; then
    if [ "$CITY" -eq "$CITY" ] 2>/dev/null; then
        CITY_PARAM="id=$CITY"
    else
        CITY_PARAM="q=$CITY"
    fi

    current=$(curl -sf "$API/weather?appid=$KEY&$CITY_PARAM&units=$UNITS")
    forecast=$(curl -sf "$API/forecast?appid=$KEY&$CITY_PARAM&units=$UNITS&cnt=1")
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        current=$(curl -sf "$API/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
        forecast=$(curl -sf "$API/forecast?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS&cnt=1")
    fi
fi

if [ -n "$current" ] && [ -n "$forecast" ]; then
    current_temp=$(echo "$current" | jq ".main.temp" | cut -d "." -f 1)
    current_icon=$(echo "$current" | jq -r ".weather[0].icon")

    forecast_temp=$(echo "$forecast" | jq ".list[].main.temp" | cut -d "." -f 1)
    forecast_icon=$(echo "$forecast" | jq -r ".list[].weather[0].icon")


    if [ "$current_temp" -gt "$forecast_temp" ]; then
        trend=""
    elif [ "$forecast_temp" -gt "$current_temp" ]; then
        trend=""
    else
        trend=""
    fi


    sun_rise=$(echo "$current" | jq ".sys.sunrise")
    sun_set=$(echo "$current" | jq ".sys.sunset")
    now=$(date +%s)

    if [ "$sun_rise" -gt "$now" ]; then 
        daytime="$ORANGE$RST $(get_duration "$((sun_rise-now))")"
    elif [ "$sun_set" -gt "$now" ]; then
        daytime="$ORANGE$RST $(get_duration "$((sun_set-now))")"
    else
        daytime="$ORANGE$RST $(get_duration "$((sun_rise-now))")"
    fi

    echo "$(get_icon "$current_icon") $current_temp$SYMBOL $trend $(get_icon "$forecast_icon") $forecast_temp$SYMBOL  $daytime"
fi
