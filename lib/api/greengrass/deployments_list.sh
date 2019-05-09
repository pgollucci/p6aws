p6_aws_greengrass_deployments_list() {
    local group_id="$1"
    shift 1

    p6_log_and_run aws greengrass list-deployments --group-id $group_id "$@"
}
