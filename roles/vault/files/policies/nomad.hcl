# Allow Nomad to generate and read Nomad tokens
path "auth/nomad/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}

# Allow reading and writing secrets managed under a Nomad role
path "nomad/role/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}

# Optional: Allow access to specific secrets or configurations for Nomad
path "secret/data/nomad/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}

path "auth/token/revoke-accessor" {
    capabilities = ["update"]
}

path "auth/approle/role/nomad" {
    capabilities = ["read", "list"]
}

path "auth/token/lookup-self" {
    capabilities = ["read"]
}

path "auth/token/renew-self" {
    capabilities = ["update"]
}

path "sys/capabilities-self" {
    capabilities = ["read"]
}
