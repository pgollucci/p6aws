p6_aws_ssm_sessions_describe() {
    local state="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-sessions --state $state "$@"
}
