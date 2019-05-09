p6_aws_ssm_session_start() {
    local target="$1"
    shift 1

    p6_log_or_run aws ssm start-session --target $target "$@"
}
