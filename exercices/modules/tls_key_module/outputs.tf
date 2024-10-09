output "key_fingerprint" {
  description = "Empreinte de la clé publique au format MD5"
  value       = tls_private_key.key.public_key_fingerprint_md5
}