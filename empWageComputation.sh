#!/bin/bash -x 

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

hours=0
totalHours=0
day=0
while [[ $day -lt 20 && $totalHours -lt 100 ]]
do
	echo "Day = $day"
	result=$((RANDOM % 3))
	case $result in
				1)salary=$((salary + ((FULL_DAY_HOUR * WAGE_PER_HOUR))))
					hours=8
					((day++))
					;;
				2)salary=$((salary + ((PART_TIME_HOUR * WAGE_PER_HOUR))))
					hours=4
					((day++))
					;;
				0)salary=$((salary + 0))
					hours=0
					;;
	esac
	totalHours=$((totalHours + hours))
done
echo "Monthly Wage is: $salary"
