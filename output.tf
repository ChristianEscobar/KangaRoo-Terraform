output "bucket_id" {
  value = "${aws_s3_bucket.fosters_bucket.id}"
}

output "bucket_arn" {
  value = "${aws_s3_bucket.fosters_bucket.arn}"
}
