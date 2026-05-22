# Floci + Terraform

Started Floci locally using Docker on port `4566`.

Configured Terraform AWS provider to use the local Floci endpoints instead of real AWS.

Created:
- an S3 bucket
- uploaded a text file into the bucket
- a DynamoDB table
- inserted a sample item into the table

Verified:
- S3 bucket exists through `localhost:4566`
- uploaded object can be fetched directly
- Terraform state contains all created resources

Infrastructure flow:

Terraform
→ AWS Provider
→ Floci (`localhost:4566`)
→ Local AWS-compatible services (S3 + DynamoDB)