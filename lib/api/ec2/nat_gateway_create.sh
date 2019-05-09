p6_aws_ec2_nat_gateway_create() {
    local allocation_id="$1"
    local subnet_id="$2"
    shift 2

    p6_log_or_run aws ec2 create-nat-gateway --allocation-id $allocation_id --subnet-id $subnet_id "$@"
}
