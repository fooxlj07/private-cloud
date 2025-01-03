# Allow access to read, write, and list KV secrets (adjust path as per your setup)
path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Allow access to list and read enabled secrets engines
path "sys/mounts" {
  capabilities = ["read", "list"]
}

# Allow access to the auth methods
path "sys/auth" {
  capabilities = ["read", "list"]
}

# Allow access to system capabilities for UI functionality
path "sys/health" {
  capabilities = ["read"]
}
