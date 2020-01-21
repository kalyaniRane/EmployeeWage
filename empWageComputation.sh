#!/bin/bash -x 

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

hours=0
totalHours=0
day=0

function getWorkingHours()
{
	checkEmpl=$((RANDOM % 3))
	case $checkEmpl in
				0)	hours=8
					;;
				1)	hours=4
					;;
				2)hours=0
					;;
	esac
	echo "$hours"
}
while [[ $day -lt 20 && $totalHours -lt 100 ]]
do
			totalHours=$((totalHours + $(getWorkingHours)))
		if [ $(getWorkingHours) -ne 0 ]
		then
			((day++))
		fi
done
echo "Total working hours in a month: $totalHours"
echo "Total monthly salary is: $((WAGE_PER_HOUR * totalHours))"
