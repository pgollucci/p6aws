p6_aws_ec2_vpc_cidr_block_associate() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 associate-vpc-cidr-block --vpc-id $vpc_id "$@"
}
