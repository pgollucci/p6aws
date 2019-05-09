p6_aws_globalaccelerator_listener_describe() {
    local listener_arn="$1"
    shift 1

    p6_log_and_run aws globalaccelerator describe-listener --listener-arn $listener_arn "$@"
}
