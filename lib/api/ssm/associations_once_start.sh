p6_aws_ssm_associations_once_start() {
    local association_ids="$1"
    shift 1

    p6_log_or_run aws ssm start-associations-once --association-ids $association_ids "$@"
}
