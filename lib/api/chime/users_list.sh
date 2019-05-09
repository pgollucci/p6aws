p6_aws_chime_users_list() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws chime list-users --account-id $account_id "$@"
}
