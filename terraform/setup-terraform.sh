S3_BUCKET_NAME=terraform-state-12312d123fa
REGION=us-west-2
S3_BUCKET_WAREHOUSE_NAME=warehousebucketawscapstone
S3_BUCKET_TECHNICIAN_DEPLOYMENT_NAME=techniciandeploymentbucket

if aws s3 ls "s3://$S3_BUCKET_NAME" 2>&1 | grep -q 'An error occurred'
then
    aws s3api create-bucket --bucket $S3_BUCKET_NAME --region $REGION --create-bucket-configuration LocationConstraint=$REGION
else
    echo "log bucket already exists"
fi
if aws s3 ls "s3://$S3_BUCKET_WAREHOUSE_NAME" 2>&1 | grep -q 'An error occurred'
then
    aws s3api create-bucket --bucket $S3_BUCKET_WAREHOUSE_NAME --region $REGION --create-bucket-configuration LocationConstraint=$REGION
else
    echo "Warehouse bucket already exists"
fi
if aws s3 ls "s3://$S3_BUCKET_TECHNICIAN_DEPLOYMENT_NAME" 2>&1 | grep -q 'An error occurred'
then
    aws s3api create-bucket --bucket $S3_BUCKET_TECHNICIAN_DEPLOYMENT_NAME --region $REGION --create-bucket-configuration LocationConstraint=$REGION
else
    echo "Technician Deployment bucket already exists"
fi
