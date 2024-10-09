terraform {
  required_providers {
    tls = {
      source = "hashicorp/tls"
    }
    local={
      source = "hashicorp/local"
    }
  }
}

resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "pk" {
  filename = "${var.name}.pem"
  content = tls_private_key.key.private_key_pem
}