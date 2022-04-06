resource "aws_s3_bucket" "my_bucket" {
  bucket = "anand109"


}

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "anand109"
  key    = "vpc.tf"
  source = "${path.module}/vpc.tf"
  etag   = "${filemd5("${path.module}/vpc.tf")}"
}
