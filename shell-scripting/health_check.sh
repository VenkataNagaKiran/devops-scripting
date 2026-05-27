#!/bin/bash

# we are going to check the health status in this script

set -x # to run the commands in debug mode

set -e # returns the code immediately if error occurs

set -o pipefail # set -e does not work in case of pipes, so set -o useful to handle pipes

# checking disk space
df -h

# checking memory usage 
free -m

# checking the running processes and returning the process ids of processes named root
ps -ef | grep root | awk '{print $2}'

# disabling the debug mode
set +x

# checking the direcotory utilization
du -h
