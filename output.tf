output "aws_instance_ip" {
    value = aws_instance.aws_inst1.*.public_ip
}

output "aws_sec_id" {
  value = aws_security_group.aws_sec.id
}

/* You can add more but keep attention for creating output type variable, Don't forget use .*. for multiple our resource  */