provider "aws" {
  alias   = "src"
  region  = "eu-west-1"
  version = "~>2.48"
}

provider "aws" {
  alias   = "req"
  region  = "eu-west-2"
  version = "~>2.48"
}
