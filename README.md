# terraform-aws-budgets

Terraform / OpenTofu module for configuring AWS budgets.

## Usage

```terraform
module "aws_budgets" {
    source  = "voidsolutionsorg/budgets/aws"
    version = "1.0.0"

    name         = "example"
    limit_amount = 10

    notified_emails = [ "aws-budgets@example.org" ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_budgets_budget.budget](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amount_unit"></a> [amount\_unit](#input\_amount\_unit) | n/a | `string` | `"USD"` | no |
| <a name="input_budget_type"></a> [budget\_type](#input\_budget\_type) | n/a | `string` | `"COST"` | no |
| <a name="input_custom_notifications"></a> [custom\_notifications](#input\_custom\_notifications) | n/a | <pre>list(object({<br>    comparison_operator        = string<br>    threshold                  = number<br>    threshold_type             = string<br>    notification_type          = string<br>    subscriber_email_addresses = optional(set(string))<br>  }))</pre> | `[]` | no |
| <a name="input_increment_amount"></a> [increment\_amount](#input\_increment\_amount) | n/a | `number` | `1` | no |
| <a name="input_limit_amount"></a> [limit\_amount](#input\_limit\_amount) | n/a | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_notified_emails"></a> [notified\_emails](#input\_notified\_emails) | n/a | `set(string)` | n/a | yes |
| <a name="input_start_amount"></a> [start\_amount](#input\_start\_amount) | n/a | `number` | `0` | no |
| <a name="input_time_period_end"></a> [time\_period\_end](#input\_time\_period\_end) | n/a | `string` | `null` | no |
| <a name="input_time_period_start"></a> [time\_period\_start](#input\_time\_period\_start) | n/a | `string` | `"2024-01-01_00:00"` | no |
| <a name="input_time_unit"></a> [time\_unit](#input\_time\_unit) | n/a | `string` | `"MONTHLY"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors

Module is maintained by [Aleksa Siriški](https://github.com/aleksasiriski) with help from the [VoidSolutions team](https://github.com/voidsolutionsorg).

## License

Apache 2 Licensed. See [LICENSE](LICENSE) for full details.
