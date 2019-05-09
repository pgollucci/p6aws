p6_aws_elbv2_listener_certificates_remove() {
    local listener_arn="$1"
    local certificates="$2"
    shift 2

    p6_log_and_run aws elbv2 remove-listener-certificates --listener-arn $listener_arn --certificates $certificates "$@"
}
