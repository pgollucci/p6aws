p6_aws_lambda_function_concurrency_delete() {
    local function_name="$1"
    shift 1

    p6_log_or_run aws lambda delete-function-concurrency --function-name $function_name "$@"
}
