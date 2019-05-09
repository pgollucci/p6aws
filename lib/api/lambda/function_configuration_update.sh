p6_aws_lambda_function_configuration_update() {
    local function_name="$1"
    shift 1

    p6_log_or_run aws lambda update-function-configuration --function-name $function_name "$@"
}
