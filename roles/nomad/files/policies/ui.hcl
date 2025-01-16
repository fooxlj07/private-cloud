# ui-write-policy.hcl
namespace "*" {
  policy = "write"
  capabilities = [
    "list-jobs",
    "read-job",
    "submit-job",
    "read-logs",
    "read-fs",
    "alloc-exec",
    "alloc-lifecycle",
    "alloc-node-exec",
    "scale-job",
    "list-scaling-policies",
    "read-scaling-policy",
    "read-job-scaling"
  ]
}

agent {
  policy = "read"
}

node {
  policy = "read"
}

quota {
  policy = "read"
}

operator {
  policy = "read"
}

volume {
  policy = "write"
}
