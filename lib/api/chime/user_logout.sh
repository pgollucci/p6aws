p6_aws_chime_user_logout() {
    local account_id="$1"
    local user_id="$2"
    shift 2

    p6_run_write_cmd aws chime logout-user --account-id $account_id --user-id $user_id "$@"
}
