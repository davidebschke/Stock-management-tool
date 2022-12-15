import json
import traceback
import boto3

def get_data(table_name, client):
    """
    Get data from DyanamoDB
    """
    results = []
    last_evaluated_key = None
    while True:
        if last_evaluated_key:
            response = client.scan(
                TableName=table_name,
                ExclusiveStartKey=last_evaluated_key
            )
        else: 
            response = client.scan(TableName=table_name)
        last_evaluated_key = response.get('LastEvaluatedKey')
        
        results.extend(response['Items'])
        
        if not last_evaluated_key:
            break
    return results

def lambda_handler(event, context):

    statusCode = 200
    statusMessage = 'Success'

    try:
        # parse the payload
        tableName = event['warehousedb']
        s3_bucket = event['warehousebucketawscapstone']
        s3_object = event['database']
        filename = event['example.txt']

        # scan the dynamodb
        dynamodb = boto3.resource('dynamodb')
        table = dynamodb.Table(tableName)
        
        client = boto3.client('dynamodb')
        data = get_data(tableName, client)
            
        # export JSON to s3 bucket
        s3 = boto3.resource('s3')
        s3.Object(s3_bucket, s3_object + filename).put(Body=json.dumps(data))

    except Exception as e:
            statusCode = 400
            statusMessage = traceback.format_exc()

    return {
        "statusCode": statusCode,
        "status": statusMessage
    }
