variable region {
    default = "us-east-1"
    type = string
    description = "Provide region"
}

variable key_name {
    default = "my-key"
    type = string
    description = "Provide key name"
}

variable port {
    default = [22, 80]
    type = list(number)
    description = "Provide port"
}

