p6_aws_glue_dev_endpoint_get() {
    local endpoint_name="$1"
    shift 1

    p6_log_and_run aws glue get-dev-endpoint --endpoint-name $endpoint_name "$@"
}
