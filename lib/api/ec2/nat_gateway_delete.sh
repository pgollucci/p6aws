p6_aws_ec2_nat_gateway_delete() {
    local nat_gateway_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-nat-gateway --nat-gateway-id $nat_gateway_id "$@"
}
