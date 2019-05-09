p6_aws_greengrass_deployment_create() {
    local deployment_type="$1"
    local group_id="$2"
    shift 2

    p6_run_write_cmd aws greengrass create-deployment --deployment-type $deployment_type --group-id $group_id "$@"
}
