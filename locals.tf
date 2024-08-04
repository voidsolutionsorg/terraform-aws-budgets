locals {
  incremental_notifications = [
    for threshold in range(var.start_amount, var.limit_amount, var.increment_amount) : {
      comparison_operator        = "GREATER_THAN"
      threshold                  = threshold
      threshold_type             = "ABSOLUTE_VALUE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = var.notified_emails
    }
  ]

  combined_notifications = concat(var.custom_notifications, local.incremental_notifications)
}