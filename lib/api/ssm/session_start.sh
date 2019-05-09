p6_aws_ssm_session_start() {
    local target="$1"
    shift 1

    p6_run_write_cmd aws ssm start-session --target $target "$@"
}
