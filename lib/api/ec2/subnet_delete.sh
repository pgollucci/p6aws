p6_aws_ec2_subnet_delete() {
    local subnet_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-subnet --subnet-id $subnet_id "$@"
}
