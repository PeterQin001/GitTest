variable "tagBu" {
  description = "Tag: bu"
}

variable "tagOwner" {
  description = "Tag: owner"
}

variable "tagEnvironment" {
  description = "Tag: environment"
  default = "dev"
}

variable "tagProduct" {
  description = "Tag: product"
  default = "sftpfamily"
}

variable "tagAppid" {
  description = "Tag: appid"
  default = "sftptransfer"
}

variable "tagCompany" {
  description = "Tag: company"
  default = "newscorp"
}

variable "tagClassification" {
  description = "Tag: classification"
  default = "private"
}

variable "bucketName" {
  description = "Bucket Name"
}

variable "users" {
  description = "Users"
}

variable "usernamePrefix" {
  default = "globalsftp"
}

variable "rolePrefix" {
  default = "arn:aws:iam::015047142077:role"
}
