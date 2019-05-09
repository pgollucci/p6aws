p6_aws_lambda_alias_update() {
    local function_name="$1"
    local name="$2"
    shift 2

    p6_log_or_run aws lambda update-alias --function-name $function_name --name $name "$@"
}
