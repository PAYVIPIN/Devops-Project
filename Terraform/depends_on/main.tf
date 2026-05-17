resource "aws_s3_bucket" "mybucket" {
  bucket = var.s3_bucket_name
}

resource "aws_db_instance" "mydb" {
  allocated_storage   = var.db_storage
  db_name             = var.db_name
  engine_version      = var.db_engine_version
  engine              = var.db_engine
  instance_class      = var.db_instance_type
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = var.db_skip_snapshot
}

resource "aws_instance" "example" {
  instance_type = var.aws_instance_type
  ami           = var.aws_ami

  depends_on    = [aws_s3_bucket.mybucket, aws_db_instance.mydb]
}
