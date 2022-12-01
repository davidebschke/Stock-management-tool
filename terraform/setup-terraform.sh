#!/bin/bash

BucketNames= capstone-terraform-state warehousebucketawscapstone techniciandeploymentbucket;
REGION=us-west-2
arraylength=${#BucketNames[@]}

for ((i=0; i<${arraylength};i++)); 
do 
    if aws s3 ls "s3://${BucketNames[i]}" 2>&1 | grep -q 'An error occurred'
    then
        aws s3api create-bucket --bucket ${BucketNames[i]} --region $REGION --create-bucket-configuration LocationConstraint=$REGION
    else
        echo "The Bucket with the name: ${BucketNames[i]} already exists "
    fi
done
