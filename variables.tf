variable "name" {
  type = string
}

variable "budget_type" {
  type    = string
  default = "COST"
}

variable "limit_amount" {
  type = number
}

variable "increment_amount" {
  type    = number
  default = 1
}

variable "start_amount" {
  type    = number
  default = 0
}

variable "amount_unit" {
  type    = string
  default = "USD"
}

variable "time_period_start" {
  type    = string
  default = "2024-01-01_00:00"
}

variable "time_period_end" {
  type    = string
  default = null
}

variable "time_unit" {
  type    = string
  default = "MONTHLY"
}

variable "notified_emails" {
  type = set(string)
}

variable "custom_notifications" {
  type = list(object({
    comparison_operator        = string
    threshold                  = number
    threshold_type             = string
    notification_type          = string
    subscriber_email_addresses = optional(set(string))
  }))
  default = []
}
