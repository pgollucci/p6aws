p6_aws_globalaccelerator_endpoint_groups_list() {
    local listener_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator list-endpoint-groups --listener-arn $listener_arn "$@"
}
