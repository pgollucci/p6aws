p6_aws_ssm_session_resume() {
    local session_id="$1"
    shift 1

    p6_run_write_cmd aws ssm resume-session --session-id $session_id "$@"
}
