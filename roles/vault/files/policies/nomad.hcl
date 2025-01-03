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