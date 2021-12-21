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
| certificate\_arn | The Amazon Resource Name (ARN) for the certificate | `any` | n/a | yes |
| database\_name | The name of the endpoint database | `any` | n/a | yes |
| endpoint\_id | The database endpoint identifier | `any` | n/a | yes |
| endpoint\_type | Endpoint type: `source` or `target` | `any` | n/a | yes |
| engine\_name | The type of engine for the endpoint. Can be one of aurora \| aurora-postgresql\| azuredb \| db2 \| docdb \| dynamodb \| elasticsearch \| kafka \| kinesis \| mariadb \| mongodb \| mysql \| oracle \| postgres \| redshift \| s3 \| sqlserver \| sybase | `string` | `""` | no |
| engine\_version | The engine version number of the replication instance | `string` | `"none"` | no |
| extra\_connection\_attributes | Additional attributes associated with the connection | `any` | n/a | yes |
| kms\_key\_arn | KMS Key ARN to use a CMK instead of default shared key, when storage\_encrypted is true | `string` | `""` | no |
| password | The password to be used to login to the endpoint database | `any` | n/a | yes |
| port | The port used by the endpoint database | `any` | n/a | yes |
| server\_name | The host name of the server | `any` | n/a | yes |
| ssl\_mode | The SSL mode to use for the connection. Can be one of none \| require \| verify-ca \| verify-full | `string` | `"none"` | no |
| username | The user name to be used to login to the endpoint database | `any` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-template/blob/master/LICENSE) for full details.