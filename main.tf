terraform {
  cloud {
    organization = "cloud-resume-nathanforviewws"
    workspaces {
      name = "Cloud-Resume-Challenge-VCS"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "dynamodb_access" {
  name = "dynamodb_access"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}


resource "aws_iam_role_policy_attachment" "lambda_assume_role" {
  role       = aws_iam_role.dynamodb_access
  policy_arn = aws_iam_policy.lambda_assume_role
}
