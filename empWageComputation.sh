#!/bin/bash

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

hours=0
totalHours=0
day=0

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

			DailyWage[day]=$((WAGE_PER_HOUR * $hours))
			totalSalary=$((totalSalary + ${DailyWage[day]}))

			echo -e "Day = $((day+1)) Day Wage = ${DailyWage[day]} \n "
			((day++))
done

echo "Daily Wage is: ${DailyWage[@]}"
echo "Total monthly salary is: $totalSalary"
