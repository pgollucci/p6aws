p6_aws_iam_policy_delete() {
    local policy_arn="$1"
    shift 1

    p6_log_or_run aws iam delete-policy --policy-arn $policy_arn "$@"
}
