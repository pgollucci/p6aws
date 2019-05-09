p6_aws_workmail_user_describe() {
    local organization_id="$1"
    local user_id="$2"
    shift 2

    p6_log_and_run aws workmail describe-user --organization-id $organization_id --user-id $user_id "$@"
}
