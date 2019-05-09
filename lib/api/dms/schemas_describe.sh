p6_aws_dms_schemas_describe() {
    local endpoint_arn="$1"
    shift 1

    p6_run_read_cmd aws dms describe-schemas --endpoint-arn $endpoint_arn "$@"
}
