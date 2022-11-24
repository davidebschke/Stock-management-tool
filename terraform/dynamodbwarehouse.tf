resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "WarehouseDB"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "objectID"

  attribute {
    name = "objectID"
    type = "S"
  }

  attribute {
    name = "Goods Name"
    type = "S"
  }

  attribute {
    name = "Piece of goods"
    type = "N"
  }
}