p6_aws_ec2_network_acl_create() {
    local vpc_id="$1"
    shift 1

    p6_log_or_run aws ec2 create-network-acl --vpc-id $vpc_id "$@"
}
