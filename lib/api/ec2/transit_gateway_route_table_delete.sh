p6_aws_ec2_transit_gateway_route_table_delete() {
    local transit_gateway_route_table_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-transit-gateway-route-table --transit-gateway-route-table-id $transit_gateway_route_table_id "$@"
}
