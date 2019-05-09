p6_aws_ec2_default_vpc_create() {

    p6_log_or_run aws ec2 create-default-vpc "$@"
}
