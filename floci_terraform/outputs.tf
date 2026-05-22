output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "uploaded_file" {
  value = aws_s3_object.hello_file.key
}