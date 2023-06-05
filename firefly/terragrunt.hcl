terraform {
  source = "github.com/gofireflyio/terraform-firefly-aws-onboarding?ref=v1.8.0"
}

dependency "firefly_auth" {
  config_path = "../firefly-auth"
}

inputs = {
  firefly_token         = dependency.firefly_auth.outputs.firefly_token
  role_external_id   = "---ROLE_EXTERNAL_ID---"
  profile            = "---AWS_PROFILE---"
  name                  = "---NAME OF THE INTEGRATION---"
  is_prod               = false  # True if it's prod, False if not
  is_event_driven       = true
  event_driven_regions  = ["us-east-1","us-east-2","us-west-1","us-west-2","af-south-1","ap-east-1","ap-south-1","ap-southeast-1","ap-southeast-2","ap-northeast-1","ap-northeast-2","ap-northeast-3","ca-central-1","cn-north-1","cn-northwest-1","eu-central-1","eu-west-1","eu-west-2","eu-west-3","eu-south-1","eu-north-1","me-south-1","sa-east-1"]
}
