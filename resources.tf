resource "google_pubsub_topic" "topic" {
  name   = var.topic_name
  labels = var.labels

  message_retention_duration = var.message_retention_duration

  schema_settings {
    schema   = var.schema
    encoding = var.schema_encoding
  }
}