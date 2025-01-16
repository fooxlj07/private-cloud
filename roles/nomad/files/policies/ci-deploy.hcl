# github-deploy-policy.hcl
namespace "default" {
  policy = "write"
  capabilities = [
    "submit-job",
    "read-job",
    "list-jobs",
    "read-logs",
    "alloc-exec",
    "alloc-node-exec",
    "scale-job"
  ]
}

agent {
  policy = "read"
}

operator {
  policy = "read"
}
