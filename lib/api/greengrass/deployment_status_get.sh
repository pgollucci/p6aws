p6_aws_greengrass_deployment_status_get() {
    local deployment_id="$1"
    local group_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-deployment-status --deployment-id $deployment_id --group-id $group_id "$@"
}
