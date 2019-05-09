p6_aws_workmail_mailbox_details_get() {
    local organization_id="$1"
    local user_id="$2"
    shift 2

    p6_run_read_cmd aws workmail get-mailbox-details --organization-id $organization_id --user-id $user_id "$@"
}
