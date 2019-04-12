#!/bin/bash

aws ec2 start-instances --instance-ids i-0a4d6d929b15cb3bf
# sleep 30


while true
do
    if ssh -i /mnt/c/Users/dacof1/software/keys/EC2test.pem ec2-user@13.53.68.236 ; then
        echo "Command succeeded"
        break
    else
        echo "sleeping for 10 and trying again"
        sleep 10
    fi
done


aws ec2 stop-instances --instance-ids i-0a4d6d929b15cb3bf