# terraform-aws-vpc-peering

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-vpc-peering.svg)](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-vpc-peering.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-vpc-peering/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-vpc-peering&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-vpc-peering/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-vpc-peering&benchmark=INFRASTRUCTURE+SECURITY)

 ---

Terraform module to peer VPCs.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```terraform
module "peer" {
  source     = "JamesWoolfenden/vpc-peering/aws"
  version    = "0.2.6"
  common_tags = var.common_tags
  providers = {
    aws.accepter  = "aws.src"
    aws.requester = "aws.req"
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws.accepter | n/a |
| aws.requester | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) |
| [aws_route_tables](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_tables) |
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) |
| [aws_vpc_peering_connection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection) |
| [aws_vpc_peering_connection_accepter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_accepter) |
| [aws_vpc_peering_connection_options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_options) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| accepter\_account\_alias | n/a | `string` | `""` | no |
| accepter\_filter\_name | n/a | `string` | `"tag:aws:cloudformation:logical-id"` | no |
| accepter\_filter\_value | n/a | `string` | `"VPC"` | no |
| common\_tags | Implements the common tags scheme | `map(any)` | n/a | yes |
| requester\_account\_alias | n/a | `string` | `""` | no |
| requester\_filter\_name | n/a | `string` | `"tag:aws:cloudformation:logical-id"` | no |
| requester\_filter\_value | n/a | `string` | `"VPC"` | no |

## Outputs

| Name | Description |
|------|-------------|
| accepter\_peer | n/a |
| connection\_peer | n/a |
| option\_accepter | n/a |
| options\_requester | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Instructions

For Peerring VPCs TODO

## Details

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-vpc-peering/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-vpc-peering/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-vpc-peering&url=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-vpc-peering&url=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_email]: mailto:?subject=terraform-aws-vpc-peering&body=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
