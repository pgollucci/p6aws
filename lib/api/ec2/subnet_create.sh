p6_aws_ec2_subnet_create() {
    local cidr_block="$1"
    local vpc_id="$2"
    shift 2

    p6_log_or_run aws ec2 create-subnet --cidr-block $cidr_block --vpc-id $vpc_id "$@"
}
