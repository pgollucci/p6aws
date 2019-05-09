p6_aws_glue_dev_endpoint_delete() {
    local endpoint_name="$1"
    shift 1

    p6_log_or_run aws glue delete-dev-endpoint --endpoint-name $endpoint_name "$@"
}
