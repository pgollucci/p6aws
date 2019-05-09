p6_aws_fms_compliance_status_list() {
    local policy_id="$1"
    shift 1

    p6_log_and_run aws fms list-compliance-status --policy-id $policy_id "$@"
}
