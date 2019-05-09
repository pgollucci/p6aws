p6_aws_organizations_account_create() {
    local email="$1"
    local account_name="$2"
    shift 2

    p6_log_or_run aws organizations create-account --email $email --account-name $account_name "$@"
}
