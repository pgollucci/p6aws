p6_aws_ec2_nat_gateway_delete() {
    local nat_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-nat-gateway --nat-gateway-id $nat_gateway_id "$@"
}
