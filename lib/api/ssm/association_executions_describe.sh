p6_aws_ssm_association_executions_describe() {
    local association_id="$1"
    shift 1

    p6_log_and_run aws ssm describe-association-executions --association-id $association_id "$@"
}
