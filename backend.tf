terraform {
  backend "s3" {
#   bucket = "globalsftpstate"
    bucket = "aws-sam-cli-managed-default-samclisourcebucket-jyomgslziq1s"
    region = "us-east-1"
  }
}
