#!/bin/bash

# ajay manager account 45000
# sunil clerk account 25000
# varun manager sales 50000
# amit manager account 47000
# tarun peon sales 15000
# deepak clerk sales 23000
# sunil peon sales 13000
# satvik director purchase 80000

echo "--- Printing employee.txt file along with serial number ---"
awk '{print NR,$0}' employee.txt

echo "--- Printing all the salaries of employees ---"
awk '{print $NF}' employee.txt

echo "--- Printing employees whose salary is greater than 30000"
awk '$NF>30000 {print $0}' employee.txt

echo "--- Printing the employee name and department ---"
awk '{print $1, $3}' employee.txt

echo "--- Printing the only employees from sales department ---"
awk '$3=="sales" {print $0}' employee.txt

echo "--- Print the records from 3rd row to 6th row"
awk 'NR == 3, NR ==7 {print NR,$0}' employee.txt
