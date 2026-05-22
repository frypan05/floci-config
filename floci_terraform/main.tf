resource "aws_s3_bucket" "demo" {
  bucket = "daksh-floci-test-bucket"
}

resource "aws_s3_object" "hello_file" {
  bucket = aws_s3_bucket.demo.bucket

  key    = "hello.txt"
  source = "./hello.txt"

  etag = filemd5("./hello.txt")
}


resource "aws_dynamodb_table" "users" {
  name         = "Users"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "user_1" {
  table_name = aws_dynamodb_table.users.name
  hash_key   = aws_dynamodb_table.users.hash_key

  item = <<ITEM
{
  "id": {
    "S": "1"
  },
  "name": {
    "S": "Daksh"
  },
  "role": {
    "S": "Engineer"
  }
}
ITEM
}