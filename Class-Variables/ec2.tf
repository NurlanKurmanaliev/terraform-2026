resource "aws_instance" "web" {
    ami = var.ec2_web["ami_id"]
    instance_type = var.type["t2.micro"] 
    
}

variable ec2_web {
    default = {
     ami_id = "ami-0cca150d127c2216f"
     type = "t2.micro"
    }
}