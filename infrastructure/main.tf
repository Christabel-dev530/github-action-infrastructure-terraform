resource "aws_instance" "nginx-server" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "nginx-server"
  subnet_id                   = aws_subnet.myapp-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("nginx.sh")
  tags = {
    Name = "${var.env_prefix}-nginx-server"
  }
}