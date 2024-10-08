resource "aws_instance" "server1" {
    ami = "ami-0e54eba7c51c234f6"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.sg1.id ]
    availability_zone = "us-east-1a"
    subnet_id = aws_subnet.private1.id
    user_data = file("code.sh")
    tags = {
        Name = "webserver-1"
    }
  
}
resource "aws_instance" "server2" {
    ami = "ami-0e54eba7c51c234f6"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.sg1.id ]
    availability_zone = "us-east-1b"
    subnet_id = aws_subnet.private2.id
    user_data = file("code.sh")
    tags = {
        Name = "webserver-2"
    }
  
}    