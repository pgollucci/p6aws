p6_aws_lambda_function_code_update() {
    local function_name="$1"
    shift 1

    p6_log_or_run aws lambda update-function-code --function-name $function_name "$@"
}
