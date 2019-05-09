p6_aws_ec2_subnet_cidr_block_disassociate() {
    local association_id="$1"
    shift 1

    p6_log_or_run aws ec2 disassociate-subnet-cidr-block --association-id $association_id "$@"
}
