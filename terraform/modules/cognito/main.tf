resource "aws_cognito_user_pool" "pool" {
  name = var.pool
}


resource "aws_cognito_user" "users" {
  user_pool_id = aws_cognito_user_pool.pool.id
  username     = var.user.name

  desired_delivery_mediums =["EMAIL"]
  enabled = false
  message_action = "RESEND"
  temporary_password = "cognitO1$"
  attributes = {
    email = var.user.email
    email_verified = true
  }
}