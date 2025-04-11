// main.tf - modules/backend

resource "aws_s3_bucket" "State_FileS3" {
  bucket = var.S3_Name
  tags = {
    Name        = var.S3_Name
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