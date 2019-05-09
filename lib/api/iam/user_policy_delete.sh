p6_aws_iam_user_policy_delete() {
    local user_name="$1"
    local policy_name="$2"
    shift 2

    p6_log_or_run aws iam delete-user-policy --user-name $user_name --policy-name $policy_name "$@"
}
