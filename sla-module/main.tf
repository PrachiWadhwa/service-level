resource "newrelic_service_level" "myservicelevelteraf"{
    for_each =  var.newrelic_service_level
    guid = each.value.guid
    name = each.value.name
    description = each.value.description
    events {
        account_id = var.account_id
        valid_events {
            from = each.value.from
            where = each.value.where
            
        }
        good_events {
            from = each.value.from
            where = each.value.where
           
        }
    }

    objective {
        target = each.value.target
        time_window {
            rolling {
                count = each.value.count
                unit = each.value.unit
            }
        }
    }
}