p6_aws_ec2_vpn_connection_create() {
    local customer_gateway_id="$1"
    local type="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-vpn-connection --customer-gateway-id $customer_gateway_id --type $type "$@"
}
