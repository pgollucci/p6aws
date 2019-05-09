p6_aws_ec2_vpc_delete() {
    local vpc_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-vpc --vpc-id $vpc_id "$@"
}
