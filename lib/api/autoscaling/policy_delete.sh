p6_aws_autoscaling_policy_delete() {
    local policy_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling delete-policy --policy-name $policy_name "$@"
}
