p6_aws_ec2_internet_gateway_create() {

    p6_log_or_run aws ec2 create-internet-gateway "$@"
}
