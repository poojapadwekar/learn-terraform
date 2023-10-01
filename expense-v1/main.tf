resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z00236712TJAPP7J1TL57"
  name    = "backend.saujpoo.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "web" {
  zone_id = "Z00236712TJAPP7J1TL57"
  name    = "test.saujpoo.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "web" {
  zone_id = "Z00236712TJAPP7J1TL57"
  name    = "mysql.saujpoo.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}