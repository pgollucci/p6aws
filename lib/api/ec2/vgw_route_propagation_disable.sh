p6_aws_ec2_vgw_route_propagation_disable() {
    local gateway_id="$1"
    local route_table_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 disable-vgw-route-propagation --gateway-id $gateway_id --route-table-id $route_table_id "$@"
}
