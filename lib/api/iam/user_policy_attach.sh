p6_aws_iam_user_policy_attach() {
    local user_name="$1"
    local policy_arn="$2"
    shift 2

    p6_run_write_cmd aws iam attach-user-policy --user-name $user_name --policy-arn $policy_arn "$@"
}
