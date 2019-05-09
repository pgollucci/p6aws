p6_aws_ssm_association_versions_list() {
    local association_id="$1"
    shift 1

    p6_log_and_run aws ssm list-association-versions --association-id $association_id "$@"
}
