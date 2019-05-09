p6_aws_lambda_function_delete() {
    local function_name="$1"
    shift 1

    p6_log_or_run aws lambda delete-function --function-name $function_name "$@"
}
