resource "aws_iam_group" "interview" {
  name = "interview"
}

resource "aws_iam_user" "interview" {
  name = "interview"
}

resource "aws_iam_group_membership" "interview" {
  name = "interview"

  users = [
    aws_iam_user.interview.name,
  ]

  group = aws_iam_group.interview.name
}

resource "aws_iam_policy" "iam_interview_user_change_access_key" {
  name        = "IAMInterviewUserChangeAccessKey"
  path        = "/"
  description = "Policy to allow an interview user to update their own access keys."

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:DeleteAccessKey",
          "iam:UpdateAccessKey",
          "iam:CreateAccessKey"
        ]
        Effect   = "Allow"
        Resource = "arn:aws:iam::*:user/$${aws:username}"
      },
    ]
  })
}

resource "aws_iam_group_policy_attachment" "interview_iam_interview_user_change_access_key" {
  group      = aws_iam_group.interview.name
  policy_arn = aws_iam_policy.iam_interview_user_change_access_key.arn
}

resource "aws_iam_group_policy_attachment" "interview_iam_read_only_access" {
  group      = aws_iam_group.interview.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "interview_power_user_access" {
  group      = aws_iam_group.interview.name
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
