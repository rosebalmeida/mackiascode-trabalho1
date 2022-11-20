resource "aws_s3_bucket" "b" {
  bucket = "XXXXXXXXXXXXXXXXXXXX"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
