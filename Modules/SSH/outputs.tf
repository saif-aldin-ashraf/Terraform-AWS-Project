output "Public-Key" {
  value = aws_key_pair.SSH-Key.key_name
}

output "Private-key" {
  value     = tls_private_key.SSH.private_key_pem
  sensitive = true
}