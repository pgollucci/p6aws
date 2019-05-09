p6_aws_organizations_account_create() {
    local email="$1"
    local account_name="$2"
    shift 2

    p6_run_write_cmd aws organizations create-account --email $email --account-name $account_name "$@"
}
