# Security Group erstellen, die SSH über IPv4 (überall) erlaubt
resource "aws_security_group" "allow_ingress" {
  vpc_id = aws_vpc.kugel.id
  # keine verpflichtende Argumente bei Security-Groups
}

resource "aws_security_group_rule" "ingress_ssh" {
  from_port         = 22
  to_port           = 22
  security_group_id = aws_security_group.allow_ingress.id
  protocol          = "tcp"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "ingress_HTTP" {
  from_port         = 80
  to_port           = 80
  security_group_id = aws_security_group.allow_ingress.id
  protocol          = "tcp"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "ingress_HTTPS" {
  from_port         = 443
  to_port           = 443
  security_group_id = aws_security_group.allow_ingress.id
  protocol          = "tcp"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "egress" {
  from_port         = 0
  to_port           = 0
  security_group_id = aws_security_group.allow_ingress.id
  protocol          = "-1"
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}

