p6_aws_ssm_connection_status_get() {
    local target="$1"
    shift 1

    p6_log_and_run aws ssm get-connection-status --target $target "$@"
}
