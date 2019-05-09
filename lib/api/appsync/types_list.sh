p6_aws_appsync_types_list() {
    local api_id="$1"
    local format="$2"
    shift 2

    p6_run_read_cmd aws appsync list-types --api-id $api_id --format $format "$@"
}
