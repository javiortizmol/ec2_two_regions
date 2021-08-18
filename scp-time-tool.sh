#!/bin/bash

LINUX_USER="ec2-user"
HOME_USER="/home/$LINUX_USER/"
FILE_TEST="test_scp.jpeg"
BR_KEY="brasil_omni.pem"
OH_KEY="test_omni.pem"
BR_SERVER="18.228.235.241"
OH_SERVER="54.221.91.118"

if [ "$1" == "" ]; then
    echo "ERROR: Heyyy!!! please send the aws region code. Eg: OH or BR"
    exit 1
fi 

if [ "$1" == "BR" ]; then
    PEM_KEY="$BR_KEY"
    SERVER_IP="$BR_SERVER"
fi

if [ "$1" == "OH" ]; then
    PEM_KEY="$OH_KEY"
    SERVER_IP="$OH_SERVER"
fi

scp_time(){
    TMP=$(mktemp)
    time (scp -i $PEM_KEY $FILE_TEST "$LINUX_USER"@"$SERVER_IP":"$HOME_USER" ) 2>$TMP
    awk -F'[ ms]+' '/^real/ {print "copy time: "1000*$2"ms"}' $TMP
    rm $TMP
}

#MAIN PROGRAM
scp_time