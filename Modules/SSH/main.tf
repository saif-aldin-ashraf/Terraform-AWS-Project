resource "tls_private_key" "SSH" {
    algorithm = "RSA"
    rsa_bits  = 4096
}
resource "aws_key_pair" "SSH-Key" {
  key_name   = var.key-name
  public_key = tls_private_key.SSH.public_key_openssh
}
resource "local_file" "Private-key" {
  content  = tls_private_key.SSH.private_key_pem
  filename = var.Private-path
}