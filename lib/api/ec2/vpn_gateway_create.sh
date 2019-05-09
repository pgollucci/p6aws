p6_aws_ec2_vpn_gateway_create() {
    local type="$1"
    shift 1

    p6_log_or_run aws ec2 create-vpn-gateway --type $type "$@"
}
