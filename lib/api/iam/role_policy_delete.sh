p6_aws_iam_role_policy_delete() {
    local role_name="$1"
    local policy_name="$2"
    shift 2

    p6_log_or_run aws iam delete-role-policy --role-name $role_name --policy-name $policy_name "$@"
}
