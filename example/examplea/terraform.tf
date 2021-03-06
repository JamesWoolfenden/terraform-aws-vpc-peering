terraform {
  required_providers {
    aws = {
      version               = "3.42.0"
      source                = "hashicorp/aws"
      configuration_aliases = [aws.accepter, aws.requester]
    }
  }
  required_version = ">=0.14.8"
}
