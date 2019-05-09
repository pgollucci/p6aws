p6_aws_iam_role_policy_get() {
    local role_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_read_cmd aws iam get-role-policy --role-name $role_name --policy-name $policy_name "$@"
}
