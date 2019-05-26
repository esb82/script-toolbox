#!/bin/bash

HOST_NAME_MAX=$(getconf HOST_NAME_MAX)
HOST_NAME_MAX_CHAR=$(($HOST_NAME_MAX/4-1))

# cat <<EOF
# ---- Hostname ----
# Ein generischen Hostname aus der Hardware und MAC/Serial erzeugen...

#     pi-sethostname.sh <prefix>

# z.b. 
# $ pi-sethostname.sh              ->  BCM2835-1234AB
# $ pi-sethostname.sh hotspot      ->  HOTSPOT-1234AB
# $ pi-sethostname.sh smarthome 4  ->  SMARTHOME-34AB
# $ pi-sethostname.sh homeserver 4 -> HOMESERVER-34AB
# $ pi-sethostname.sh l42077rc 3   ->    L42077RC-4AB
# $ pi-sethostname.sh x-pi 2       ->         X-PI-AB

# ---- -------- ----
# EOF


suffix_cnt=6
if [ -n "$2" ]
  then 
    suffix_cnt=$2
fi

prefix_max_cnt=$(( $HOST_NAME_MAX_CHAR-($suffix_cnt+1) ))
#echo "->$prefix_max_cnt"

if [ -z "$1" ]
  then
    default="$(cat /proc/cpuinfo | grep Hardware | cut -d ':' -f 2 | tr "[a-z]" "[A-Z]" | tr -d '[:space:]')"
    prefix=$default
    echo "No prefix supplied, set prefix to ($default) from /proc/cpuinfo"
else
    prefix=$(echo $1 | tr "[a-z]" "[A-Z]" )
    if [ ${#prefix} -gt $(($prefix_max_cnt)) ]
      then 
        echo $prefix is to long, maximum $prefix_max_cnt characters 
        exit 1
    #else 
    #    echo $prefix
    fi
    # TODO - prüfen ob erstes zeichen ein buchstabe ist
    #echo "supplied prefix set to $prefix"
fi

serial="$(cat /proc/cpuinfo | grep Serial | cut -d ':' -f 2 | tr "[a-z]" "[A-Z]" | tr -d '[:space:]')"
suffix=${serial:(-$suffix_cnt)} 

#echo "prefix: $prefix"
#echo "suffix: $suffix"
hostname=$prefix-$suffix
#echo ${#hostname}

read -p "Would you like to change HOSTNAME to $hostname now? (y/N)" -n 1 -r -s is_confirm && echo
if [ "$is_confirm" == 'y' ]; then
    sudo hostnamectl set-hostname $hostname
    echo "Hostname wurde in $hostname geändert!"
fi

