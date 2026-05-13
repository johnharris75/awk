#!/bin/bash

#########################
#Author: John Harris
#Date: 5/12/26 
#Script for Node Health
#########################

set -x #debug mode
set -e # exit the script when errors
set -o pipefail #
df -h

free -g

nproc

ps -ef | grep systemd | awk -F" " '{print $2}'
