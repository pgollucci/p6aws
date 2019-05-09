p6_aws_globalaccelerator_listener_describe() {
    local listener_arn="$1"
    shift 1

    p6_run_read_cmd aws globalaccelerator describe-listener --listener-arn $listener_arn "$@"
}
