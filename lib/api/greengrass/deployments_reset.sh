p6_aws_greengrass_deployments_reset() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws greengrass reset-deployments --group-id $group_id "$@"
}
