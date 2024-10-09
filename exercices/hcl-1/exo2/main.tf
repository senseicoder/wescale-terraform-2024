terraform {
  required_providers {
    tls = {
      source = "hashicorp/tls"
    }
    local ={
      source = "hashicorp/local"
    }
  }
}

data "local_file" "population" {
    filename = "people.json"
}

output "b64" {
  value = base64encode(data.local_file.population.content)
}

resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

output "public" {
  value = tls_private_key.key.public_key_pem
}