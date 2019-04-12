#!/bin/bash

aws ec2 start-instances --instance-ids i-0a4d6d929b15cb3bf
sleep 30

if ssh -i path_to_key ec2_user@13.53.68.236 ; then
    echo "Command succeeded"
else
    echo "sleeping for 10 and trying again"
    sleep 10
fi
