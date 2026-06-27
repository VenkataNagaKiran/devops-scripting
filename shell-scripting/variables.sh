#!/bin/bash
set -e 
echo ""
echo "Basic Variables"
echo "----------------"
NAME="Kiran"
AGE="24"
CITY="Hyderabad"
ROLE="DEVOPS ENGINEER"
echo "Name: $NAME"
echo "Age: $AGE"
echo "City: $CITY"
echo "Role: $ROLE"
# Environment variables
echo ""
echo "Environment Variables"
echo "----------------------"
echo "Home Directory: $HOME"
echo "Current Directory: $PWD"
echo "Hostname: $HOSTNAME"
echo "Current User: $USER"
echo "Shell: $SHELL"
#echo "Path: $PATH"
echo "Os Type: $OSTYPE"
# Command substitutions
echo ""
echo "Commnad substitutions"
echo "---------------------"
CURRENT_DATE=$(date)
FILE_COUNT=$(ls|wc -l)
DISK_USAGE=$(df -hT | tail -1 | awk {'print $1'})
MY_IP=$(hostname -I)
echo "Current Dat: $CURRENT_DATE"
echo "File Count: $FILE_COUNT"
echo "Disk Usage: $DISK_USAGE"
echo "My IP: $MY_IP"
echo ""
echo "Read Only Variables"
echo "-------------------"
readonly COUNTRY="INDIA"
readonly PI=3.14
echo "Country: $COUNTRY (cannot be changed)"
echo "PI: $PI (cannot be changed)"
#COUNTRY="SRI LANKA" #causes error (COUNTRY: readonly variable)

echo ""
echo "String Operations"
echo "-----------------"
FIRST_NAME="Venkata"
LAST_NAME="Kiran"
FULL_NAME="$FIRST_NAME$LAST_NAME"
echo "Full Name: $FULL_NAME"
echo "Length of First Name: ${#FIRST_NAME}"
echo "First three characters of last name: ${LAST_NAME:0:3}"

GREETING="Hello World"
echo "Uppercase of GREETING: ${GREETING^^}"
echo "Lowercase of GREETING: ${GREETING,,}"
echo "First character upper: ${GREETING^}"



set -e
# Inserting an array
echo ""
echo "Using Array variable"
echo "--------------------"
fruits=("Apple" "Banana" "Papaya" "Grape" "Pomegranate" "Orange" "Kiwi")

echo "First fruit: ${fruits[0]}"
echo "Third fruit: ${fruits[2]}"
echo "All fruits: ${fruits[@]}"
echo "Last fruit: ${fruits[-1]}"

# Adding new element in fruits array
fruits+=("Pear")
echo "New fruits list is ${fruits[@]}"
echo ""
echo "Numeric Operations"
echo "-------------------"
NUM1=10
NUM2=2
echo "Number1: $NUM1, Number2: $NUM2"
echo "Addition: $((NUM1+NUM2))"
echo "Substraction: $((NUM1-NUM2))"
echo "Multiplication: $((NUM1*NUM2))"
echo "Division: $((NUM1/NUM2))"
echo "Modulus: $((NUM1%NUM2))"
echo "Power: $((NUM1**NUM2))"
