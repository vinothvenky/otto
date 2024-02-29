
/* ================== Provider ====================== */

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "${var.AWS_REGION}"
  alias   = "pilot_provider"
  
}   

provider "aws" {
  alias = "remotestate"
  region     = "us-east-1"
  
}
