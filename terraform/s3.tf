resource "aws_s3_bucket" "teste-bucket" {

  bucket = "tf-braubrau-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}