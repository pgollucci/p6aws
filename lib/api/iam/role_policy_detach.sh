p6_aws_iam_role_policy_detach() {
    local role_name="$1"
    local policy_arn="$2"
    shift 2

    p6_log_or_run aws iam detach-role-policy --role-name $role_name --policy-arn $policy_arn "$@"
}
