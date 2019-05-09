p6_aws_ssm_association_update() {
    local association_id="$1"
    shift 1

    p6_log_or_run aws ssm update-association --association-id $association_id "$@"
}
