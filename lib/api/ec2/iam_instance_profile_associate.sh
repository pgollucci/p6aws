p6_aws_ec2_iam_instance_profile_associate() {
    local iam_instance_profile="$1"
    local instance_id="$2"
    shift 2

    p6_log_or_run aws ec2 associate-iam-instance-profile --iam-instance-profile $iam_instance_profile --instance-id $instance_id "$@"
}
