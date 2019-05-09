p6_aws_dms_endpoint_delete() {
    local endpoint_arn="$1"
    shift 1

    p6_run_write_cmd aws dms delete-endpoint --endpoint-arn $endpoint_arn "$@"
}
