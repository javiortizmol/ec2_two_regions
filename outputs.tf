output "ip_public_main" {
    value = aws_instance.main.public_ip
}

output "ip_public_provisional" {
    value = aws_instance.provisional.public_ip
}