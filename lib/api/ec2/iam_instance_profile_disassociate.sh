p6_aws_ec2_iam_instance_profile_disassociate() {
    local association_id="$1"
    shift 1

    p6_log_or_run aws ec2 disassociate-iam-instance-profile --association-id $association_id "$@"
}
