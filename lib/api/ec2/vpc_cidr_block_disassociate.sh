p6_aws_ec2_vpc_cidr_block_disassociate() {
    local association_id="$1"
    shift 1

    p6_log_or_run aws ec2 disassociate-vpc-cidr-block --association-id $association_id "$@"
}
