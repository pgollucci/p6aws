p6_aws_organizations_account_from_organization_remove() {
    local account_id="$1"
    shift 1

    p6_run_write_cmd aws organizations remove-account-from-organization --account-id $account_id "$@"
}
