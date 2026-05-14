resource "aws_instance" "web" {
    ami = "ami-0cca150d127c2216f"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.main3.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    user_data = file("apache.sh")

    tags = {
        Name = "NurlanBoss"
    }
}

output hello {
    value = aws_instance.web.public_ip
}