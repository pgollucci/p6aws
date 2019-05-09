p6_aws_organizations_policy_attach() {
    local policy_id="$1"
    local target_id="$2"
    shift 2

    p6_run_write_cmd aws organizations attach-policy --policy-id $policy_id --target-id $target_id "$@"
}
