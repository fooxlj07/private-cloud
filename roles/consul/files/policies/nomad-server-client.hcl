key_prefix "nomad/" {
  policy = "write"
}

service "nomad" {
  policy = "write"
}

service "nomad-client" {
  policy = "write"
}

agent_prefix "" {
  policy = "write"
}

session_prefix "nomad/" {
  policy = "write"
}

# Allow Nomad to read/write ACL tokens for itself
acl = "write"