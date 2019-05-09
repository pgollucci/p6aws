p6_aws_workmail_password_reset() {
    local organization_id="$1"
    local user_id="$2"
    local password="$3"
    shift 3

    p6_log_or_run aws workmail reset-password --organization-id $organization_id --user-id $user_id --password $password "$@"
}
