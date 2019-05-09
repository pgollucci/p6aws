p6_aws_globalaccelerator_listener_update() {
    local listener_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator update-listener --listener-arn $listener_arn "$@"
}
