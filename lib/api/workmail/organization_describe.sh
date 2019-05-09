p6_aws_workmail_organization_describe() {
    local organization_id="$1"
    shift 1

    p6_log_and_run aws workmail describe-organization --organization-id $organization_id "$@"
}
