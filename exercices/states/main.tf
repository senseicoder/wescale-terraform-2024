resource "tls_private_key" "llave" {
    algorithm = "RSA"
    rsa_bits = 4096
}

moved {
    from = tls_private_key.key
    to = tls_private_key.clef
}