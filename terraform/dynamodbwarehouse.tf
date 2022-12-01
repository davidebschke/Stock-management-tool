resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "WarehouseDB"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "objectID"
  range_key      = "Goods_Name"

  attribute {
    name = "objectID"
    type = "S"
  }

  attribute {
    name = "Goods_Name"
    type = "S"
  }

  attribute {
    name = "Amount_of_goods"
    type = "N"
  }

  attribute {
    name = "Price_of_goods"
    type = "N"
  }

  global_secondary_index {
    name               = "IndexForAmountOfGoods"
    hash_key           = "Goods_Name"
    range_key          = "Amount_of_goods"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["description"]
  }

  global_secondary_index {
    name               = "IndexForPriceOfGoods"
    hash_key           = "Goods_Name"
    range_key          = "Price_of_goods"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["description"]
  }
}
