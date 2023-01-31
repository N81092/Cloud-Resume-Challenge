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
},
{
"resources": [
      "mode": "managed",
      "type": "aws_iam_role",
      "name": "dynamodb_access",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
  }
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:iam::905995217822:role/service-role/dynamodb_access",
            "assume_role_policy": "{\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"}}],\"Version\":\"2012-10-17\"}",
            "create_date": "2023-01-24T03:42:48Z",
            "description": "",
            "force_detach_policies": false,
            "id": "dynamodb_access",
            "inline_policy": [
              {
                "name": "lambda_assume_role",
                "policy": "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::905995217822:role/service-role/dynamodb_access\",\"Sid\":\"VisualEditor0\"}]}"
              }
            ],
            "managed_policy_arns": [
              "arn:aws:iam::905995217822:policy/Lambda_dynambodb_access",
              "arn:aws:iam::905995217822:policy/service-role/AWSLambdaBasicExecutionRole-aad671ca-90e4-4b05-8332-cab43265f75f",
              "arn:aws:iam::aws:policy/AWSLambdaInvocation-DynamoDB",
              "arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole"
            ],
            "max_session_duration": 3600,
            "name": "dynamodb_access",
            "name_prefix": "",
            "path": "/service-role/",
            "permissions_boundary": null,
            "tags": {},
            "tags_all": {},
            "unique_id": "AROA5F4MF5OPMN6PNIVP4"
          },
          "sensitive_attributes": [],
          "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjAifQ=="
        }
      ]
    }
