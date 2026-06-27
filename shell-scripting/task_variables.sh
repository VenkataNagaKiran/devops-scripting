#!/bin/bash

echo "<----- Personal Info ----->"
Name="Kiran"
Age="24"
City="Hyderabad"
Profession="IT Employee"

Current_year=$(date +%Y)
echo "Name is: ${Name}"
echo "Birth Year is: $((Current_year-Age))"
echo "City is: ${City}"
echo "Profession is: ${Profession}"


echo""
echo "<----- System Reporter ----->"
Current_user=$(whoami)
Current_date=$(date)
Last_reboot_until=$(uptime)
Running_processes=$(ps aux | wc -l)
echo "Current user is: ${Current_user}"
echo "Current date is: ${Current_date}"
echo "Last reboot until: ${Last_reboot_until}"
echo "Number of running process: ${Running_processes}"


echo ""
echo "<----- String Manipulation ----->"
Text="DevOps Engineering is Awesome"
echo "Text: ${Text}"
echo "Length of Text is: ${#Text}"
echo "Prinitng the substring: ${Text:7:11}"
echo "Converting all the characters into uppercase: ${Text^^}"
echo "Converting all the characters into lowercase: ${Text,,}"

echo ""
echo "<----- Calculator ----->"
#echo "Enter the first number:"
#read X
#echo "Enter the second number:"
#read Y

X=10
Y=6

echo "Addition of entered numbers: $((X+Y))"
echo "Difference between the entered two numbers: $((X-Y))"
echo "Multiplication of entered two numbers: $((X*Y))"
echo "Division of entered two numbers: $((X/Y))"
echo "Modulus of entered two numbers: $((X%Y))"
echo "Power of first number to second number: $((x**y))"


echo ""
echo "<----- Array Operations ----->"
Devops_Tools=("Docker" "Kubernetes" "Ansible" "Jenkins")
echo "The third tool is: ${Devops_Tools[2]}"
echo "All the tools are: ${Devops_Tools[@]}"
Devops_Tools+="Terraform"
echo "Total number of tools are: ${#Devops_Tools}"
