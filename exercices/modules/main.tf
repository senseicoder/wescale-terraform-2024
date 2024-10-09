module "key1" {
  source   = "./tls_key_module"
  name = "key1"
}

module "key2" {
  source   = "./tls_key_module"
  name = "key2"
}

output "fp1" {
  value = module.key1.key_fingerprint
}

output "fp2" {
  value = module.key2.key_fingerprint
}

output "fp" {
  value = {
    key1 = module.key1.key_fingerprint
    key2 = module.key2.key_fingerprint
  }
  
}