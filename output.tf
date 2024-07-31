# Instanz-IP ausgeben
output "baklava_ip" {
  value = aws_instance.Baklava.public_ip
}
output "name_der_security_gruppe" {
  value = aws_security_group.allow_ingress.name
}
output "Arn" {
  value = aws_security_group.allow_ingress.arn
}
output "aws_dynamodb_table" {
  value = aws_dynamodb_table.tesla.name
}