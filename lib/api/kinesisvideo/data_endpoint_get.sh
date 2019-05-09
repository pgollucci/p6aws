p6_aws_kinesisvideo_data_endpoint_get() {
    local api_name="$1"
    shift 1

    p6_log_and_run aws kinesisvideo get-data-endpoint --api-name $api_name "$@"
}
