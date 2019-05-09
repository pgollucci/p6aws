p6_aws_ec2_transit_gateway_vpc_attachment_accept() {
    local transit_gateway_attachment_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 accept-transit-gateway-vpc-attachment --transit-gateway-attachment-id $transit_gateway_attachment_id "$@"
}
