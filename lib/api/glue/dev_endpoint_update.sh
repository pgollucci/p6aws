p6_aws_glue_dev_endpoint_update() {
    local endpoint_name="$1"
    shift 1

    p6_run_write_cmd aws glue update-dev-endpoint --endpoint-name $endpoint_name "$@"
}
