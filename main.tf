locals {
  coreos_account_number = "595879546273",
  architecture = "x86_64",
  virtualization_type = "hvm"
}

data "aws_ami" "coreos" {
  most_recent = true

  owners = ["${local.coreos_account_number}"]

  filter {
    name = "architecture"
    values = ["${local.architecture}"]
  }

  filter {
    name = "virtualization-type"
    values = ["${local.virtualization_type}"]
  }

  filter {
    name = "name"
    values = ["CoreOS-${var.channel}-*"]
  }
}
