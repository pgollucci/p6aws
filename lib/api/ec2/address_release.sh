p6_aws_ec2_address_release() {

    p6_log_or_run aws ec2 release-address "$@"
}
