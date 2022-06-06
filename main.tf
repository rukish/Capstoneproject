provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "EC2Instance" {
  ami           = "ami-0c4f7023847b90238"
  key_name = var.key_name
  instance_type = var.instance_type
  tags= {
    Name = "EC2-Master"
  }
}

resource "aws_instance" "Woeker1Instance" {
  ami           = "ami-0c4f7023847b90238"
  key_name = var.key_name
  instance_type = var.instance_type
  tags= {
    Name = "EC2-Worker1"
  }

}
resource "aws_instance" "Worker2Instance" {
  ami           = "ami-0c4f7023847b90238"
  key_name = var.key_name
  instance_type = var.instance_type
  tags= {
    Name = "EC2-Worker2"
  }
}
