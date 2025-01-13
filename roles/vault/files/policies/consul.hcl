# Allow Consul to read its own authentication configuration
path "auth/token/lookup-self" {
  capabilities = ["read"]
}

# Allow Consul to renew its own token
path "auth/token/renew-self" {
  capabilities = ["update"]
}

# Allow Consul to authenticate with its AppRole
path "auth/approle/role/consul" {
    capabilities = ["read", "list"]
}

# Allow reading and writing secrets managed under a Consul role
path "consul/role/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}

# Allow Consul to manage its own tokens under a specific namespace
path "auth/consul/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Allow Consul to read and manage dynamic secrets for services
path "secret/data/consul/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Optionalvault_tokens: Allow access to system health for debugging
path "sys/health" {
  capabilities = ["read"]
}
