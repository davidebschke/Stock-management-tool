resource "aws_dynamodb_table" "WarehouseDB" {
  name           = "WarehouseDB"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "objectID"

  attribute {
    name = "objectID"
    type = "S"
  }

  attribute {
    name = "Goods_Name"
    type = "S"
  }

global_secondary_index {
    name = "IndexForGoodsName"
    hash_key = "Goods_Name"
    write_capacity = 10
    read_capacity = 10
    projection_type = "INCLUDE"
    non_key_attributes = ["Amount_of_goods","Price_of_goods"]
    }
}

resource "aws_dynamodb_table_item" "warehouse_item_example" {
    table_name = aws_dynamodb_table.WarehouseDB.name
    hash_key   = aws_dynamodb_table.WarehouseDB.hash_key
    item = <<ITEM
{
    "objectID": {"S": "1"},
    "Goods_Name": {"S": "Nagel"},
    "Amount_of_goods": {"S": "200"}
    "Price_of_goods":{"S":"0.25€"}
    }
ITEM
}
