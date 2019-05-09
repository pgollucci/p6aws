p6_aws_lambda_function_delete() {
    local function_name="$1"
    shift 1

    p6_run_write_cmd aws lambda delete-function --function-name $function_name "$@"
}
