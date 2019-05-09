p6_aws_appsync_function_delete() {
    local api_id="$1"
    local function_id="$2"
    shift 2

    p6_run_write_cmd aws appsync delete-function --api-id $api_id --function-id $function_id "$@"
}
