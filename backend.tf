terraform {
  backend "s3" {
    bucket         = "saifoo-project"
    key            = "Project/tfstate.tf"
    region         = "us-east-1"
    dynamodb_table = "projectDB1"
  }
}

# resource "aws_dynamodb_table" "State_FileDB" {
#   name             = var.Dynamo_Name
#   hash_key         = "LockID"
#   billing_mode = "PAY_PER_REQUEST"
#   depends_on = [ aws_s3_bucket.State_FileS3 ]

#    attribute {
#     name = "LockID"
#     type = "S"
#   }
# }