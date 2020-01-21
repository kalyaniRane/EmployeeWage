#!/bin/bash -x

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8

if [[ $((RANDOM % 2)) -eq 0 ]]
then
	echo "Employee is absent"
else
	echo "Employee is present"
	echo "Daily Employee Wage = $((WAGE_PER_HOUR * FULL_DAY_HOUR))"
fi
