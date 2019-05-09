p6_aws_appsync_data_source_get() {
    local api_id="$1"
    local name="$2"
    shift 2

    p6_run_read_cmd aws appsync get-data-source --api-id $api_id --name $name "$@"
}
