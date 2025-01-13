# Allow the agent to register itself and its services
service_prefix "" {
  policy = "write"
}

# Allow Nomad to register nodes
node_prefix "" {
  policy = "write"
}

# Allow key-value store access
key_prefix "nomad/" {
  policy = "write"
}

# Allow session access for locks
session_prefix "" {
  policy = "write"
}

# Allow agent operations
agent_prefix "" {
  policy = "write"
}

# Allow service discovery
service "" {
  policy = "read"
}

# Allow the client to register its own services
service "nomad-client" {
  policy = "write"
}

# Allow access to catalog
operator = "read"
