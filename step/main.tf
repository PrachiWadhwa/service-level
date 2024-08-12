resource "newrelic_synthetics_step_monitor" "step" {
  for_each = var.stepm
  name                                    = each.value.name
  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  locations_public                        = each.value.locations_public
  period                                  =each.value.period
  status                                  =each.value.status
  steps {
    ordinal = each.value.ordinal
    type    = each.value.type
    values  = [each.value.values]
  }
 
}