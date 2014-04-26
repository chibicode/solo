#!/bin/sh


# help function for app description 
function help () {
    echo "Solo-  A Jekyll theme that supports single-page websites only, but supports them well. Yes, it's responsive.."
    echo "===========================================================================================================.."
    echo "    solo init                  - creates a solo project";
}


case "$1" in
    init)
		echo "Downloading Solo ..."
		if [ $2 ]
		then
			# create files
			git clone https://github.com/chibicode/solo $2
		else
			git clone https://github.com/chibicode/solo
		fi
		if ["$?" = "1"]
			echo "Solo project created......................................................."
			echo "==========================================================================="
			echo "Go to http://solo.chibi.io/"
		else
			echo "Some unexpected error occured"
		fi
    ;;
    *)
        help
    ;;
esac