p6_aws_ssm_session_resume() {
    local session_id="$1"
    shift 1

    p6_log_or_run aws ssm resume-session --session-id $session_id "$@"
}
