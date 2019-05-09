p6_aws_chime_account_delete() {
    local account_id="$1"
    shift 1

    p6_run_write_cmd aws chime delete-account --account-id $account_id "$@"
}
