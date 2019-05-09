p6_aws_organizations_account_from_organization_remove() {
    local account_id="$1"
    shift 1

    p6_log_or_run aws organizations remove-account-from-organization --account-id $account_id "$@"
}
