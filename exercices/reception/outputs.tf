output "instance_ip" {
  value = aws_instance.test_instance.*.public_dns
}
