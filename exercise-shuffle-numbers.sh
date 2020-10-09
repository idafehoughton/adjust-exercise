#!/bin/bash 

function help_cmd {
	echo -e "------------------------\nWarning:\nYou must provide 2 natural integer values,\ngreater than 0, separated by a space, in a natural order,\nwhich will determine the range of random values.\n1st Parameter: $1\n2nd Parameter: $2\n------------------------";
	return 1;
}
function check_input {
	re='^[0-9]+$';
	if ! [[ $1 =~ $re ]]; then 
		help_cmd $1 $2;
	elif ! [[ $2 =~ $re ]]; then 
		help_cmd $1 $2;
	elif [ $# -lt 2 ]; then 
		help_cmd $1 $2;
	elif [ $# -gt 2 ]; then 
		help_cmd $1 $2;
	elif [ $1 -lt 1 ]; then
		help_cmd $1 $2;
	elif [ $2 -le $1 ]; then
		help_cmd $1 $2;
	else return 0;
	fi;
}
function shuffle {
        echo `seq $1 1 $2 | shuf`; return 0;
}

function main {
	check_input $1 $2 && shuffle $1 $2;
}

main $1 $2;
