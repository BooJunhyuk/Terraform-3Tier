output "web_subnet1_id" {
  description = "ID of the first public subnet"
  value       = aws_subnet.web_subnet1.id
}

output "web_subnet2_id" {
  description = "ID of the second public subnet"
  value       = aws_subnet.web_subnet2.id
}
