#!/bin/bash 

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

day=1

declare -A DailyWage

function getWorkingHours()
{
	checkEmpl=$((RANDOM % 2))
	case $checkEmpl in
				0)hours=8
					;;
				1)hours=4
					;;
				*)hours=0
					;;
	esac
	echo "$hours"
}
while [[ $day -lt 20 && $totalHours -lt 100 ]]
do
			hours=$(getWorkingHours)
			totalHours=$((totalHours + hours))

			DailyWage["Day "$day]=$((WAGE_PER_HOUR * $hours))
			totalSalary=$((totalSalary + ${DailyWage["Day "$day]}))

			((day++))
done

echo -e "Days are : ${!DailyWage[@]} \n"
echo -e "Daily Wage is: ${DailyWage[@]} \n"
echo "Total monthly salary is: $totalSalary"
