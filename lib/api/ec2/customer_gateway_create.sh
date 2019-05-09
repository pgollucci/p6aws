p6_aws_ec2_customer_gateway_create() {
    local bgp_asn="$1"
    local public_ip="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws ec2 create-customer-gateway --bgp-asn $bgp_asn --public-ip $public_ip --type $type "$@"
}
