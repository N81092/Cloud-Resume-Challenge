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
  #stub
}

resource "aws_iam_role_policy_attachment" "lambda_assume_role" {
  role       = aws_iam_role.dynamodb_access
  policy_arn = aws_iam_policy.lambda_assume_role
}
