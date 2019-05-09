p6_aws_iam_policy_create() {
    local policy_name="$1"
    local policy_document="$2"
    shift 2

    p6_run_write_cmd aws iam create-policy --policy-name $policy_name --policy-document $policy_document "$@"
}
