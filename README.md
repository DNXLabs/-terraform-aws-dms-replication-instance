# terraform-aws-dms

[![Lint Status](https://github.com/DNXLabs/terraform-aws-rds/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-rds/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-rds)](https://github.com/DNXLabs/terraform-aws-rds/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocated\_storage | The amount of storage (in gigabytes) to be initially allocated for the replication instance | `number` | `50` | no |
| availability\_zone | The EC2 Availability Zone that the replication instance will be created in | `any` | n/a | yes |
| engine\_version | The engine version number of the replication instance | `any` | n/a | yes |
| preferred\_maintenance\_window | The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC) | `any` | n/a | yes |
| replication\_instance\_class | The compute and memory capacity of the replication instance as specified by the replication instance class | `string` | `"t3.micro"` | no |
| replication\_instance\_id | The replication instance identifier | `any` | n/a | yes |
| replication\_subnet\_ids | A list of the EC2 subnet IDs for the subnet group | `any` | n/a | yes |
| vpc\_security\_group\_ids | A list of VPC security group IDs to be used with the replication instance | `any` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-template/blob/master/LICENSE) for full details.