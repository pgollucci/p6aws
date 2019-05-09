p6_aws_ssm_session_terminate() {
    local session_id="$1"
    shift 1

    p6_run_write_cmd aws ssm terminate-session --session-id $session_id "$@"
}
