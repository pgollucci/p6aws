p6_aws_lambda_function_configuration_update() {
    local function_name="$1"
    shift 1

    p6_run_write_cmd aws lambda update-function-configuration --function-name $function_name "$@"
}
