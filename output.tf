
output "public_ip" {
  value = aws_instance.server1.public_ip
}
output "availability_zonez" {
  value = aws_instance.server1.availability_zone
}

output "ssh-command" {
  value = "ssh -i kengni-key.pem ec2-user@${aws_instance.server1.public_ip}"
}
