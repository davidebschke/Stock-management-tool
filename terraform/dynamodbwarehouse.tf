resource "aws_dynamodb_table" "warehouseDB" {
  name           = "warehousedb"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "objectID"

  attribute {
    name = "objectID"
    type = "S"
  }

  attribute {
    name = "goods_name"
    type = "S"
  }

global_secondary_index {
    name = "index_for_goods_name"
    hash_key = "goods_name"
    write_capacity = 10
    read_capacity = 10
    projection_type = "INCLUDE"
    non_key_attributes = ["amount_of_goods", "price_of_goods"]
    }
}

# Example Item to check the Table
resource "aws_dynamodb_table_item" "warehouse_item_example" {
    table_name = aws_dynamodb_table.warehouseDB.name
    hash_key   = aws_dynamodb_table.warehouseDB.hash_key
  item = <<ITEM
  {
    "objectID": {"S": "1"},
    "goods_name": {"S": "Nagel"},
    "amount_of_goods": {"S": "200"},
    "price_of_goods":{"S": "2,5"}
  }
ITEM
}
