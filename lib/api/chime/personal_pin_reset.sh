p6_aws_chime_personal_pin_reset() {
    local account_id="$1"
    local user_id="$2"
    shift 2

    p6_run_write_cmd aws chime reset-personal-pin --account-id $account_id --user-id $user_id "$@"
}
