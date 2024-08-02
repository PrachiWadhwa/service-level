resource "newrelic_service_level" "myservicelevelteraf"{
    for_each =  var.newrelic_service_level
    guid = each.value.guid
    name = each.value.name
    description = each.value.description
    events {
        account_id = var.account_id
        valid_events {
            from = each.value.from_valid
            where = each.value.where_valid
            
        }
     dynamic "good_events" {
            for_each = each.value.from != null ? [each.value]: []
            content {
            from = each.value.from
            where = each.value.where
            }
           
           
        }
         dynamic "bad_events" {
             for_each = each.value.from_bad != null ? [each.value] : []
             content{
            from = each.value.from_bad
            where = each.value.where_bad
             }
           
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