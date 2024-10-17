output "role_arn" {
  value = aws_iam_role.ce15_s3_create_bucket_role.arn
}

output "policy_arn" {
  value = aws_iam_policy.ce15_s3_full_access_policy.arn
}
