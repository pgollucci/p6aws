p6_aws_iam_policy_version_delete() {
    local policy_arn="$1"
    local version_id="$2"
    shift 2

    p6_log_or_run aws iam delete-policy-version --policy-arn $policy_arn --version-id $version_id "$@"
}
