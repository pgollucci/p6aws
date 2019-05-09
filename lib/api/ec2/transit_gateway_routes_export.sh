p6_aws_ec2_transit_gateway_routes_export() {
    local transit_gateway_route_table_id="$1"
    local s3_bucket="$2"
    shift 2

    p6_run_write_cmd aws ec2 export-transit-gateway-routes --transit-gateway-route-table-id $transit_gateway_route_table_id --s3-bucket $s3_bucket "$@"
}
