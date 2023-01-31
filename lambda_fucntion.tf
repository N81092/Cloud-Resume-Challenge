locals {
    lambda_zip_location = "output/dblambdafunc.zip"
}

data "archive_file" "dblambdafunc" {
  type        = "zip"
  source_file = "lambda_function.py"
  output_path = "${local.lambda_zip_location}"
}

resource "aws_lambda_function" "lambda_func" {
  filename      = "${local.lambda_zip_location}"
  function_name = "dbcall"
  role          = "${aws_iam_role.lambda_role.arn}"
  handler       = "lambda_function.lambda_handler"
  source_code_hash = "${filebase64sha256(local.lambda_zip_location)}"
  runtime = "python3.8"

}
