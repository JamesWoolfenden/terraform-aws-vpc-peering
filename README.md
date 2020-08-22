
[![Slalom][logo]](https://slalom.com)

# terraform-aws-vpc-peering

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-vpc-peering.svg)](https://github.com/JamesWoolfenden/terraform-aws-vpc-peering/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| accepter\_account\_alias | n/a | `string` | `""` | no |
| accepter\_filter\_name | n/a | `string` | `"tag:aws:cloudformation:logical-id"` | no |
| accepter\_filter\_value | n/a | `string` | `"VPC"` | no |
| common\_tags | Implements the common tags scheme | `map` | n/a | yes |
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

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-vpc-peering&url=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-vpc-peering&url=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
[share_email]: mailto:?subject=terraform-aws-vpc-peering&body=https://github.com/jameswoolfenden/terraform-aws-vpc-peering
