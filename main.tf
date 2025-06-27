terraform {
    required_version = "~> 1.12.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "naveeninfra" {
	ami = "ami-05ffe3c48a9991133" 
	instance_type = "t2.micro"
}
