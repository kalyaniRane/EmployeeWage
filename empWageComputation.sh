#!/bin/bash -x

echo "Welcome to Employee Wage."

if [[ $((RANDOM % 2)) -eq 0 ]]
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi
