resource "aws_s3_bucket" "demo" {
  bucket = "daksh-floci-test-bucket"
}

resource "aws_s3_object" "hello_file" {
  bucket = aws_s3_bucket.demo.bucket

  key    = "hello.txt"
  source = "./hello.txt"

  etag = filemd5("./hello.txt")
}