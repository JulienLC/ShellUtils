#!/bin/bash
# set variables 
##################################################################
# Purpose: exit from shell if the value input is different from 0
# Arguments:
#   $1 -> output of a command line example output of ant command
#   if 0 value -> we continue the script
#   if different from 0 -> stop the script
##################################################################
function check_or_terminate() 
{
    local return_code="$@"
    if [ $return_code != 0 ]
    then
    echo "Error in the last command executed with code $return_code"
    exit 1;
    fi
}

ls
check_or_terminate