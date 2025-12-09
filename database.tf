resource "aws_dynamodb_table" "dynamo_db" {
  name         = "coin-server-db"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
  tags = { Name = "DynamoDB Table" }
}
