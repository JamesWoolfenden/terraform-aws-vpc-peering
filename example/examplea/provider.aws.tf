provider "aws" {
  alias  = "src"
  region = "eu-west-1"
}

provider "aws" {
  alias  = "req"
  region = "eu-west-2"
}
