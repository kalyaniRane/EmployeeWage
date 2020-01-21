#!/bin/bash -x

echo "Welcome to Employee Wage."

WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

result=$((RANDOM % 3))

case $result in
				1)echo "Employee is work full time."
					echo "Employee Daily Wage is = $((FULL_DAY_HOUR * WAGE_PER_HOUR))"
					;;
				2)echo "Employee is work part time."
				  echo "Employee Daily Wage is = $((PART_TIME_HOUR * WAGE_PER_HOUR))"
					;;
				0)echo "Employee is absent."
					echo "Employee Daily Wage is = 0"
					;;
esac
