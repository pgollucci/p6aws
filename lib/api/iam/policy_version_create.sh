p6_aws_iam_policy_version_create() {
    local policy_arn="$1"
    local policy_document="$2"
    shift 2

    p6_run_write_cmd aws iam create-policy-version --policy-arn $policy_arn --policy-document $policy_document "$@"
}
