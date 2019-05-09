p6_aws_iot_default_policy_version_set() {
    local policy_name="$1"
    local policy_version_id="$2"
    shift 2

    p6_log_or_run aws iot set-default-policy-version --policy-name $policy_name --policy-version-id $policy_version_id "$@"
}
