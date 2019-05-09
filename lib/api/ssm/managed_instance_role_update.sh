p6_aws_ssm_managed_instance_role_update() {
    local instance_id="$1"
    local iam_role="$2"
    shift 2

    p6_log_or_run aws ssm update-managed-instance-role --instance-id $instance_id --iam-role $iam_role "$@"
}
