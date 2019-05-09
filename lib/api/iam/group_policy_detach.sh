p6_aws_iam_group_policy_detach() {
    local group_name="$1"
    local policy_arn="$2"
    shift 2

    p6_log_or_run aws iam detach-group-policy --group-name $group_name --policy-arn $policy_arn "$@"
}
