
data "archive_file" "zip_the_export_lambda" {
    type        = "zip"
    source_dir  = "./departments/warehouse/python_warehouse/"
    output_path = "./departments/warehouse/python_warehouse_build/python_warehouse.zip"
}

resource "aws_lambda_function" "terraform_lambda_func_export" {
    filename                       = "./departments/warehouse/python_warehouse_build/python_warehouse.zip"
    function_name                  = "Warehouse_Lambda_function"
    role                           = "arn:aws:iam::886389208156:role/LabRole"
    handler                        = "backup_warehouse.lambda_handler"
    runtime                        = "python3.9"
    layers = ["arn:aws:lambda:us-west-2:336392948345:layer:AWSSDKPandas-Python39:2"]

    environment {
      variables = {
        TABLE_NAME = aws_dynamodb_table.warehouseDB.name
        OUTPUT_BUCKET = "warehousebucketawscapstone"
        TEMP_FILENAME = "/tmp/export.csv"
        OUTPUT_KEY = "export.csv"
      }
  }
}