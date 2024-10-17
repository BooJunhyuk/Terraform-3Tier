# IAM 역할 생성
resource "aws_iam_role" "ce15_s3_create_bucket_role" {
  name = var.role_name  # 변수로 역할 이름을 외부에서 전달받음

  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# IAM 정책 정의 (S3에 대한 모든 권한 부여)
resource "aws_iam_policy" "ce15_s3_full_access_policy" {
  name        = var.policy_name  # 변수로 정책 이름을 외부에서 전달받음
  description = "Full access to S3 resources"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:*"
        ],
        Resource = [
          "*"
        ]
      }
    ]
  })
}

# 역할에 정책 연결
resource "aws_iam_role_policy_attachment" "ce15_attach_s3_policy" {
  role       = aws_iam_role.ce15_s3_create_bucket_role.name
  policy_arn = aws_iam_policy.ce15_s3_full_access_policy.arn
}
