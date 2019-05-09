p6_aws_globalaccelerator_endpoint_group_describe() {
    local endpoint_group_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator describe-endpoint-group --endpoint-group-arn $endpoint_group_arn "$@"
}
