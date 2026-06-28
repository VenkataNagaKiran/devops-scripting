#!/bin/bash

foo1="Hello"
foo2="World"
foo3="$foo1 $foo2"
echo "$foo3"

AGE=24

CURRENT_YEAR=$(date +%Y)

echo "$((CURRENT_YEAR-AGE))"

str1="Hello"
echo -e "\n${str1}"
echo -e "\n\"${str1}\""

if command -v git 2>&1; then
	echo "Git is installed successfully."
        git --version
else
	echo "git is not installed."
fi
