output "channel_id" {
  value=newrelic_notification_channel.my_channel["channel1"].id
}