p6_aws_pinpoint_email_dedicated_ip_get() {
    local ip="$1"
    shift 1

    p6_log_and_run aws pinpoint-email get-dedicated-ip --ip $ip "$@"
}
