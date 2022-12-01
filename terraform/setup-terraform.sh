#!/bin/bash

BucketNames[0]=capstone-terraform-state
BucketNames[1]=warehousebucketawscapstone
BucketNames[2]=techniciandeploymentbucket
REGION=us-west-2
#arraylength=$(( ${#BucketNames[@]} - 1 ))
#echo arraylength

for bucket in ${BucketNames[@]}; 
do 
    if aws s3 ls "s3://$bucket" 2>&1 | grep -q 'An error occurred'
    then
        aws s3api create-bucket --bucket $bucket --region $REGION --create-bucket-configuration LocationConstraint=$REGION
    else
        echo "The Bucket with the name: $bucket already exists "
    fi
done
