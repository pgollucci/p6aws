p6_aws_ec2_transit_gateway_route_table_disassociate() {
    local transit_gateway_route_table_id="$1"
    local transit_gateway_attachment_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 disassociate-transit-gateway-route-table --transit-gateway-route-table-id $transit_gateway_route_table_id --transit-gateway-attachment-id $transit_gateway_attachment_id "$@"
}
