#Some data we want to output
output "private_ip" {
  value = "${aws_instance.lesson-one.private_ip}"
}

output "sg_id" {
  value = "${aws_security_group.ssh-inbound.id}"
}
