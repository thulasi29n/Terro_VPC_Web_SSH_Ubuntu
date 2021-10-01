provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_ACCESS_KEY_ID" { 
  description ="Aws Access Key"

}

variable "AWS_SECRET_ACCESS_KEY" { 
  description ="Aws Access secret key"


}
