provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-002e4c7e919946314"
    instance_type = "t4g.micro"
    count = var.core_count

    tags = {
        Name = "ExampleInstance"
    }
}
