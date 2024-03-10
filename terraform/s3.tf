resource "aws_s3_bucket" "teste-bucket" {

  bucket = var.BUCKET

  tags = {
    Name        = "Bucket Fiap Tech"
    Environment = "Dev"
  }
}