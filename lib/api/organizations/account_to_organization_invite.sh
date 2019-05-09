p6_aws_organizations_account_to_organization_invite() {
    local target="$1"
    shift 1

    p6_log_or_run aws organizations invite-account-to-organization --target $target "$@"
}
