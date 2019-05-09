p6_aws_greengrass_deployment_create() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws greengrass create-deployment --group-id $group_id "$@"
}
