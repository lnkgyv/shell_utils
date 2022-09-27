#!/bin/bash
#
###############################################################################
#
# Numeral system converter convertes number or list of comma separate number
# from specific numeral system(bases: 8(0 prefix), 16(0x prefix)) to decimal.
#
# numeral_system_converter.sh <input file>
#
###############################################################################

if [ -z "$1" ] ;
then
	echo "There is no enought parameter:"
	echo "$0 <input file>"

	exit 0
fi

while read -r -d, number
do
	printf "%d," "$number"
done < "$1"
printf "%d \b \n" "$number"
