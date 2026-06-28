#!/bin/bash
set -e

echo -e "\n1. Basic conditionals"
echo "=========================="

# Basic numeric operations
num=10
if [ $num -eq 10 ]; then
	echo "The number is 10"
else
	echo "The number is not equal to 10"
fi

# Basic string operations
str="Devops"
if [ "$str" = "Devops" ]; then
	echo "The value in the string is \"Devops\""
else
	echo "The value in the string is not \"Devops\""
fi

# Basic if elif else operations
score=82
if [ $score -ge 90 ]; then
	echo "The score is outstanding and the grade is \"A+\""
elif [ $score -ge 80 ]; then
	echo "The score is excellent and the grade is \"A\""
elif [ $score -ge 70 ]; then
	echo "The score is good and the grade is \"B\""
elif [ $score -ge 60 ]; then
	echo "The score is average and the grade is \"C\""
else 
	echo "The score is below average and need improvement"
fi


echo -e "\n2. Numeric comparison operators"
echo "==================================="

num1=25
num2=18
[ $num1 -eq $num2 ] && echo "$num1 is equal to $num2" || echo "$num1 is not equal to $num2"
[ $num1 -ne $num2 ] && echo "$num1 is not equal to $num2" || echo "$num1 is equal to $num2"
[ $num1 -gt $num2 ] && echo "$num1 is greater than $num2" || echo "$num1 is not greater than $num2"
[ $num1 -lt $num2 ] && echo "$num1 is less than $num2" || echo "$num1 is not less than $num2"
[ $num1 -ge $num2 ] && echo "$num1 is greater than or equal to $num2" || echo "$num1 is not greater than or equal to $num2"
[ $num1 -le $num2 ] && echo "$num1 is less than or equal to $num2" || echo "$num1 is not less than or equal to $num2"


echo -e "\n3. String comparison operators"
echo "=================================="

str1="Hello"
str2="World"
str3=""

echo "string 1 = \"$str1\" string 2 = \"$str2\" and string 3 = \"$str3\""
[ "$str1" = "$str2" ] && echo "\"$str1\" and \"$str2\" are same" || echo "\"$str1\" and \"$str2\" are not same"
[ "$str1" != "$str2" ] && echo "\"$str1\" and \"$str2\" are not same" || echo "\"$str1\" and \"$str2\" are same"
[ -z "$str3" ] && echo "Length of \"$str3\" is zero" || echo "Length of \"$str3\" is not zero"
[ -n "$str3" ] && echo "Length of \"$str3\" is not zero" || echo "Length of \"$str3\" is  zero"

echo -e "\n4. File and Directory Tests"
echo "================================"

test_file="test_file.txt"
test_dir="test_directory"

#echo "Creating test file and directory..."
#echo "This is test file" > $test_file
#mkdir -p $test_dir

[ -e "$test_file" ] && echo "$test_file exists" || echo "$test_file does not exist"
[ -f "$test_file" ] && echo "$test_file is of type file" || echo "$test_file is not a file"
[ -d "$test_dir" ] && echo "$test_dir is a directory" || echo "$test_dir is not a directory"

# permission tests
[ -r "$test_file" ] && echo "$test_file is readable" || echo "$test_file is not readable"
[ -w "$test_file" ] && echo "$test_file is writable" || echo "$test_file is not writable"
[ -x "$test_file" ] && echo "$test_file is executable" || echo "$test_file is not executable" 

#rm -f $test_file
#rmdir $test_dir

echo -e "\n5. Logical operators"
echo "=========================="

age=25
country="India"

# Logical And operator
if [ $age -gt 18 ] && [ "$country" = "India" ]; then
	echo "You are eligible to vote"
else
	echo "You are not eligible to vote"	
fi

# Logical Or operator
if [ $age -lt 12 ] || [ $age -gt 60 ]; then
	echo "You are eligble for discount"
else
	echo "You are not eligible for discount"
fi

# Logical Not operator
if [ ! -f "nonexistent.txt" ]; then
	echo "The file does not exist"
fi

echo -e "\n6. Using nested if statement"
echo "================================"
user_role="admin"
login_status="Active"

if [ "$login_status"="Active" ]; then
	if [ "$user_role" = "user" ]; then
		echo "User access granted - Limited permission"
	elif [ "$user_role" = "admin" ]; then
		echo "Admin access granted - Full permissions"
	else
		echo "unknown user"
	fi
else
	echo "Please login first"
fi

echo -e "\n6. Case statements"
echo "======================"

environment="production"

case $environment in
	"development" | "dev")
		echo "Development environment settings loaded."
		debug_mode=true
		;;
	"staging" | "stage")
		echo "Staging environment settings loaded."
		debug_mode=false
		;;
	"production" | "prod")
		echo "Production environment settings loaded."
		degub_mode=false
		;;
	*)
		echo "Please provide the environment."
		debug_mode=false
		;;
esac
