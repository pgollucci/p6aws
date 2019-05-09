p6_aws_ssm_sessions_describe() {
    local state="$1"
    shift 1

    p6_log_and_run aws ssm describe-sessions --state $state "$@"
}
