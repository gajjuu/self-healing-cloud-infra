#!/bin/bash
INSTANCE_ID=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=monitor-server" --query "Reservations[*].Instances[*].InstanceId" --output text)
aws ec2 reboot-instances --instance-ids $INSTANCE_ID
