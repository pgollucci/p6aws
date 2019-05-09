p6_aws_elbv2_listener_certificates_add() {
    local listener_arn="$1"
    local certificates="$2"
    shift 2

    p6_run_read_cmd aws elbv2 add-listener-certificates --listener-arn $listener_arn --certificates $certificates "$@"
}
