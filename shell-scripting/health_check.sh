#!/bin/bash

# we are going to check the health status in this script

# set -x # to run the commands in debug mode

set -e # returns the code immediately if error occurs

set -o pipefail # set -e does not work in case of pipes, so set -o useful to handle pipes

echo "===================="
echo "checking disk space"
echo "===================="
df -h

echo "======================="
echo "checking memory usage "
echo "========================"
free -m

echo "====================================================================================="
echo "checking the running processes and returning the process ids of processes named root"
echo "====================================================================================="
ps -ef | grep root | awk '{print $2}'

# echo "========================="
# echo "disabling the debug mode"
# echo "========================"
# set +x

echo "===================================="
echo "checking the direcotory utilization"
echo "===================================="
du -h
