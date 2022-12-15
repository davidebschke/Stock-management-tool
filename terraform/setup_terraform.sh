#!/bin/bash

BucketNames="capstone-terraform-state warehousebucketawscapstone"
REGION=us-west-2

for bucket in $BucketNames; 
do 
    if aws s3 ls "s3://$bucket" 2>&1 | grep -q 'An error occurred'
    then
        aws s3api create-bucket --bucket $bucket --region $REGION --create-bucket-configuration LocationConstraint=$REGION
    else
        echo "The Bucket with the name: $bucket already exists "
    fi
done

rm ./departments/warehouse/python_warehouse_build/*.zip 