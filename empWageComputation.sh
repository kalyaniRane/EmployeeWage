#!/bin/bash -x

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

result=$((RANDOM % 3))

if [[ $result -eq 0 ]]
then
	echo "Employee is absent"
elif [[ $result -eq 1 ]]
then
	echo "FullTime Employee"
	echo "Employee has Salary = $((FULL_DAY_HOUR * WAGE_PER_HOUR))"
else
	echo "PartTime Employee"
	echo "Employee has Salary = $((PART_TIME_HOUR * WAGE_PER_HOUR))"
fi
