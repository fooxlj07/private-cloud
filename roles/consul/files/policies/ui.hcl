# UI Policy for accessing the Consul web interface
node_prefix "" {
  policy = "read"
}

service_prefix "" {
  policy = "read"
}

key_prefix "" {
  policy = "read"
}

agent_prefix "" {
  policy = "read"
}
