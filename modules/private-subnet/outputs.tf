# 첫 번째 프라이빗 서브넷 ID 출력
output "private_subnet1_id" {
  description = "ID of the first private subnet"
  value       = aws_subnet.private_subnet1.id
}

# 두 번째 프라이빗 서브넷 ID 출력
output "private_subnet2_id" {
  description = "ID of the second private subnet"
  value       = aws_subnet.private_subnet2.id
}
