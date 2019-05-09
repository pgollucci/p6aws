p6_aws_globalaccelerator_endpoint_group_delete() {
    local endpoint_group_arn="$1"
    shift 1

    p6_log_or_run aws globalaccelerator delete-endpoint-group --endpoint-group-arn $endpoint_group_arn "$@"
}
