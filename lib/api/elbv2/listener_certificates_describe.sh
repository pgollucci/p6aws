p6_aws_elbv2_listener_certificates_describe() {
    local listener_arn="$1"
    shift 1

    p6_log_and_run aws elbv2 describe-listener-certificates --listener-arn $listener_arn "$@"
}
