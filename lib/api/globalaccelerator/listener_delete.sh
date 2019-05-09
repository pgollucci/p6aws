p6_aws_globalaccelerator_listener_delete() {
    local listener_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator delete-listener --listener-arn $listener_arn "$@"
}
