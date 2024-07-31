resource "aws_instance" "Baklava" {
  ami           = "ami-071878317c449ae48"
  instance_type = "t2.micro"

  # Instanz einen Name-Tag für AWS-Management-Konsole geben
  tags = {
    Name = "Baklava"
  }

  # Instanz mit Security-Group verknüpfen
  vpc_security_group_ids      = [aws_security_group.allow_ingress.id]
  subnet_id                   = aws_subnet.kugelfisch1.id
  associate_public_ip_address = true

}
