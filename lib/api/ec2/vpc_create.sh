p6_aws_ec2_vpc_create() {
    local cidr_block="$1"
    shift 1

    p6_log_or_run aws ec2 create-vpc --cidr-block $cidr_block "$@"
}
