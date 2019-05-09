p6_aws_iam_group_policy_delete() {
    local group_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_write_cmd aws iam delete-group-policy --group-name $group_name --policy-name $policy_name "$@"
}
