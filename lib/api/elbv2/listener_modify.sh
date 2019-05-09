p6_aws_elbv2_listener_modify() {
    local listener_arn="$1"
    shift 1

    p6_log_and_run aws elbv2 modify-listener --listener-arn $listener_arn "$@"
}
