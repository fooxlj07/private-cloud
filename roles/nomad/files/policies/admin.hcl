# admin-policy.hcl
namespace "*" {
  policy = "write"
}

agent {
  policy = "write"
}

node {
  policy = "write"
}

operator {
  policy = "write"
}

quota {
  policy = "write"
}

host_volume "*" {
  policy = "write"
}

plugin {
  policy = "write"
}
