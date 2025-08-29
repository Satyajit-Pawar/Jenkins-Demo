terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"      
}
resource "aws_instance" "myinstance" {
	 ami = "ami-0360c520857e3138f"
	 instance_type = "t2.micro"
	 subnet_id = "subnet-0bb17a9833a16403d"
	 associate_public_ip_address = true
	 key_name = "suny"
	 count = 1
	  tags = {
    Name = "tf-example"
  }
} 
