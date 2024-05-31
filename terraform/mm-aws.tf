# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "mmtf1" {
  ami           = "ami-0d1376ce0abc23950"
  instance_type = "t2.large"
  
  tags {
    Name = "terraform-example"
  }
}
