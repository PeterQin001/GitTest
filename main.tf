# add user
resource "aws_secretsmanager_secret" "secret" {
  count = length(var.users)
  description = lookup(var.users[count.index], "Username")
  name = join("/", [var.usernamePrefix, lookup(var.users[count.index], "Username")])
  recovery_window_in_days = 0

  tags = {
    bu = var.tagBu
    environment = var.tagEnvironment
    company = var.tagCompany
    bu = var.tagBu
    product = var.tagProduct
    owner = var.tagOwner
    appid = var.tagAppid
    classification = var.tagClassification
  }
}

resource "aws_secretsmanager_secret_version" "secret" {
  count = length(var.users)
  secret_id = aws_secretsmanager_secret.secret[count.index].id

  secret_string = <<EOF
{
  "Role": "${join("/", [var.rolePrefix, lookup(var.users[count.index], "Role", "globalsftpUserBucketRole${var.tagBu}")])}",
  "PublicKey": "${lookup(var.users[count.index], "PublicKey", "")}",
  "HomeDirectoryDetails": "${lookup(var.users[count.index], "Directory", "[{\\\"Entry\\\": \\\"/\\\", \\\"Target\\\": \\\"/globalsftpbucket${var.bucketName}\\\"}]")}"
  }
EOF
}


###### Business Unit Bucket ######
resource "aws_s3_bucket" "b" {
  bucket = "globalsftpbucket${var.bucketName}"
  acl = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    bu = var.tagBu
    environment = var.tagEnvironment
    company = var.tagCompany
    bu = var.tagBu
    product = var.tagProduct
    owner = var.tagOwner
    appid = var.tagAppid
    classification = var.tagClassification
  }
}

resource "aws_s3_bucket_public_access_block" "globalsftpBucketPolicy" {
  bucket = aws_s3_bucket.b.id

  restrict_public_buckets = true
  ignore_public_acls = true
  block_public_acls = true
  block_public_policy = true
}


###### Business Unit Bucket Role ######
resource "aws_iam_role" "globalsftpUserBucketRole" {
  name = "globalsftpUserBucketRole${var.tagBu}"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
        "Effect": "Allow",
        "Principal": {
            "Service": "transfer.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
        }
    ]
}
EOF

  tags = {
    bu = var.tagBu
    environment = var.tagEnvironment
    company = var.tagCompany
    bu = var.tagBu
    product = var.tagProduct
    owner = var.tagOwner
    appid = var.tagAppid
    classification = var.tagClassification
  }
}


###### Business Unit Bucket Policy ######
resource "aws_iam_role_policy" "globalsftpUserBucketPolicy" {
  name = "globalsftpUserBucketPolicy${var.tagBu}"
  role = aws_iam_role.globalsftpUserBucketRole.id

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
        "Sid": "AllowListingBucketReadandWriteandDelete",
        "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:GetObject",
                "s3:DeleteObjectVersion",
                "s3:DeleteObject",
                "s3:GetObjectVersion",
                "s3:ListBucket",
                "s3:GetBucketLocation"
            ],
            "Resource": [
                "arn:aws:s3:::globalsftpbucket${var.bucketName}/*",
                "arn:aws:s3:::globalsftpbucket${var.bucketName}"
            ]
        }
    ]
}
POLICY
}
