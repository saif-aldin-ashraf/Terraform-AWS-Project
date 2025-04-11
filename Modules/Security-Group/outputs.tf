// outputs.tf - modules/security_group

output "Sec-Group-ID" {
  value = aws_security_group.Sec_Group.id
}