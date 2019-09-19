variable "s3_bucket_name" {
  type        = string
  description = "The name of bucket to upload the files."
}
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
  region = "us-east-1"
}

resource "aws_s3_bucket_object" "file_test1_upload" {
  bucket = "${aws_s3_bucket.s3_bucket.bucket}"
  key    = "test1.txt"
  content = timestamp()
}

resource "aws_s3_bucket_object" "file_test2_upload" {
  bucket = "${aws_s3_bucket.s3_bucket.bucket}"
  key    = "test2.txt"
  content = timestamp()
}
