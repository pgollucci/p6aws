p6_aws_appsync_api_keys_list() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws appsync list-api-keys --api-id $api_id "$@"
}
