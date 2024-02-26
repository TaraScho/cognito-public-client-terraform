provider "aws" {
  region     = "${var.region}"
  access_key = "${var.frontend_aws_access_key_id}"
  secret_key = "${var.frontend_aws_secret_access_key}"

  default_tags {
    tags = var.aws_tags
  }
}

resource "aws_cognito_user_pool" "web_app_userpool" {
  name = "CoolCoursesUserPool"
  auto_verified_attributes = [ "email" ]
}

resource "aws_cognito_user_pool_client" "web_app_client" {
  name = "CoolCoursesWebAppClient"
  user_pool_id = aws_cognito_user_pool.web_app_userpool.id
}



