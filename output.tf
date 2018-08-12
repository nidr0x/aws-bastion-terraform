output "INSTANCE_ID" {
  value = "${aws_instance.bastion.id}"
}

output "PUBLIC_IP" {
  value = "${aws_instance.bastion.public_ip}"
}

output "PRIVATE_IP" {
  value = "${aws_instance.bastion.private_ip}"
}

output "SG_GROUP_ID" {
  value = "${aws_security_group.access.id}"
}
