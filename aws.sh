#!/bin/bash
##############
#Author: John
#This script will report the aws resource
#AWS S3
#AWS EC2
#AWS Lambda
#AW IAM USER
#DEBUG MODE
set -x
#List s3 buckets 
echo "Print list of s3 buckets"
aws 3 list >> resourceTracker

#Lit ec2 instances
echo "Print ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#List lambda functions
echo "Print lambda functions"
aws lambda list-functions >> resourceTracker

#List IAM Users
echo "Print list of IAM users"
aws iam list-users >> resourceTracker

