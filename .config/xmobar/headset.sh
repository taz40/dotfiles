#!bin/bash

if ! command -v headsetcontrol &> /dev/null
then
    echo ""
    exit
else
    var=$(headsetcontrol -b -c)
    if [[ "$var" -eq "-1" ]]
    then
	echo "Charging"
    else if [[ "$var" -eq "-2" ]]
        then
	    echo "Not Connected"
        else
	    echo "$var%"
        fi
    fi
fi
