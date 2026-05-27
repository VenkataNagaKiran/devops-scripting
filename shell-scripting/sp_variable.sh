#!/bin/bash

# For loop works with the combination of do and done in shell scripting
# $* refers to our scripts own arguments

# set -x runs the script like debug mode
set -x

for TOKEN in $*
do
	echo "$TOKEN"
done


# example input: ./sp_variable.sh This is special variable example
# Expected output: 
# This
# is 
# special
# variable
# example
