output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.web_app_userpool.id
}

output "cognito_client_id" {
  value = aws_cognito_user_pool_client.web_app_client.id
}