p6_aws_ec2_vpc_create() {
    local cidr_block="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-vpc --cidr-block $cidr_block "$@"
}
