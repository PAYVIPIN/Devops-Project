terraform {
    required_version = "= 1.14.4"
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "6.46.0"
        }
        http = {
            source = "hashicorp/http"
            version = "3.6.0"
        }
        random = {
            source = "hashicorp/random"
            version = "3.9.0"
        }
        local = {
            source = "hashicorp/local"
            version = "2.9.0"
        }
    }
}
