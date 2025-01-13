# Admin policy grants full access to all paths
path "sys/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
