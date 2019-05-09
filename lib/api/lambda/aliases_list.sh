p6_aws_lambda_aliases_list() {
    local function_name="$1"
    shift 1

    p6_log_and_run aws lambda list-aliases --function-name $function_name "$@"
}
