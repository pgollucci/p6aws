p6_aws_iam_entities_for_policy_list() {
    local policy_arn="$1"
    shift 1

    p6_run_read_cmd aws iam list-entities-for-policy --policy-arn $policy_arn "$@"
}
