resource "aws_s3_bucket" "teste-bucket" {

  bucket = var.bucket

  tags = {
    Name        = "Bucket Fiap Tech"
    Environment = "Dev"
  }
}