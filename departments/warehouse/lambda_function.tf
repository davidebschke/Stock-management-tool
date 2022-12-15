
data "archive_file" "zip_the_python_code" {
    type        = "zip"
    source_dir  = "./departments/warehouse/python_warehouse/"
    output_path = "./departments/warehouse/python_warehouse_build/python_warehouse.zip"
}

resource "aws_lambda_function" "terraform_lambda_func" {
    filename                       = "./departments/warehouse/python_warehouse_build/python_warehouse.zip"
    function_name                  = "Warehouse_Lambda_function"
    role                           = "arn:aws:iam::886389208156:role/LabRole"
    handler                        = "index.lambda_handler"
    runtime                        = "python3.8"
}
