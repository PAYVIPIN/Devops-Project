resource "tls_private_key" "mykey"{
    algorithm = "RSA"
}

resource "local_file" "private_key_pem"{
    content = "tls_private_key.mykey.private_key_pem"
    filename = "MyAWSkey.pem"
}
