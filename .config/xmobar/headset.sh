#!bin/bash

if ! command -v headsetcontrol &> /dev/null
then
    echo ""
    exit
else
    var=$(headsetcontrol -b -c)
    if [[ "$var" -eq "-1" ]]
    then
	echo "<fc=darkblue>Charging</fc>"
    else if [[ "$var" -eq "-2" ]]
        then
	    echo ""
        else
	    if [[ "$var" -ge "50" ]]
	    then
		echo "<fc=darkgreen>$var</fc>%"
	    else if [[ "$var" -le "20" ]]
		 then
		     echo "<fc=darkred>$var</fc>%"
		 else
	             echo "<fc=darkorange>$var</fc>%"
		 fi
	    fi
        fi
    fi
fi
