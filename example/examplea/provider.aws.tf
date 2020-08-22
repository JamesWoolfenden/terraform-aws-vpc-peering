provider "aws" {
  alias   = "src"
  region  = "eu-west-1"
  version = "3.00.0"
}

provider "aws" {
  alias   = "req"
  region  = "eu-west-2"
  version = "3.00.0"
}
