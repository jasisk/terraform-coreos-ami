output "id" {
  value = "${data.aws_ami.coreos.id}"
}

output "name" {
  value = "${data.aws_ami.coreos.name}"
}
