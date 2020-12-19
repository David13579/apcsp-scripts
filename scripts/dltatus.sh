#!/bin/bash
while [ $x -le 11 ]; do
	ping -c1 -t1 d10$x &> /dev/null
	if [[ $? -eq 0 ]]; then
		echo d10$x is alive
	else
		echo 10$x is inactive

	fi;
	x=$(( $x + 1 ));
done
exit 0
