p6_aws_ec2_transit_gateway_attachment_propagations_get() {
    local transit_gateway_attachment_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 get-transit-gateway-attachment-propagations --transit-gateway-attachment-id $transit_gateway_attachment_id "$@"
}
