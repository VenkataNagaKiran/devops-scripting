#!/bin/bash
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
