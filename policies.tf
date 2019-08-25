resource "aws_s3_bucket_policy" "fosters_bucket_policy" {
  bucket = "${aws_s3_bucket.fosters_bucket.id}"

  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["${aws_s3_bucket.fosters_bucket.arn}/*"]
    }
  ]
}
POLICY
}
