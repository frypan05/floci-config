import boto3

s3 = boto3.client(
    "s3",
    endpoint_url="http://localhost:9000",
    aws_access_key_id="admin",
    aws_secret_access_key="password",
)

s3.create_bucket(Bucket="my-bucket")

s3.put_object(
    Bucket="my-bucket",
    Key="hello.txt",
    Body=b"hello floci",
)
#show
print(s3.list_objects_v2(Bucket="my-bucket"))