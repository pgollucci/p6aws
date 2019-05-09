p6_aws_iam_policy_get() {
    local policy_arn="$1"
    shift 1

    p6_log_and_run aws iam get-policy --policy-arn $policy_arn "$@"
}
