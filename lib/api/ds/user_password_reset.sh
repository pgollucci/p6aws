p6_aws_ds_user_password_reset() {
    local directory_id="$1"
    local user_name="$2"
    local new_password="$3"
    shift 3

    p6_log_or_run aws ds reset-user-password --directory-id $directory_id --user-name $user_name --new-password $new_password "$@"
}
