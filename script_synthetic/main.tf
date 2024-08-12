
resource "newrelic_synthetics_script_monitor" "scrimonitor" {
  for_each                                = var.script
  status                                  = each.value.status
  name                                    = each.value.name
  type                                    = each.value.type
  locations_public                        = each.value.locations_public
  period                                  = each.value.period
  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  script                                  =file(each.value.script)
  script_language                         = each.value.script_language


}


