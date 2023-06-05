terraform {
  source = "github.com/gofireflyio/terraform-firefly-aws-onboarding?ref=v1.8.0/modules/firefly_auth"
}

inputs = {
  firefly_access_key = "---FIREFLY-ACCESS-KEY---"
  firefly_secret_key = "---FIREFLY-SECRET-KEY---"
}