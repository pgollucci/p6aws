p6_aws_ec2_vpc_classic_link_disable() {
    local vpc_id="$1"
    shift 1

    p6_log_or_run aws ec2 disable-vpc-classic-link --vpc-id $vpc_id "$@"
}
