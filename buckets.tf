resource "aws_s3_bucket" "fosters_bucket" {
  bucket = "${var.bucket_name}-${terraform.workspace}"
  acl    = "private"
  tags = {
    Name        = "KangaRoo-TheKitty"
    Environment = "Dev"
  }
}
