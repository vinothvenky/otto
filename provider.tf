
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
  access_key = "AKIAX7VJDOUYVHSBLAVG"
  secret_key = "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"

}   

provider "aws" {
  alias = "remotestate"
  region     = "us-east-1"
  # access_key = "AKIAX7VJDOUYVHSBLAVG"
  # secret_key = "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"
}
