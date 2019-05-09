p6_aws_appsync_data_source_update() {
    local api_id="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws appsync update-data-source --api-id $api_id --name $name --type $type "$@"
}
