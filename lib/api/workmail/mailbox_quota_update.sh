p6_aws_workmail_mailbox_quota_update() {
    local organization_id="$1"
    local user_id="$2"
    local mailbox_quota="$3"
    shift 3

    p6_run_write_cmd aws workmail update-mailbox-quota --organization-id $organization_id --user-id $user_id --mailbox-quota $mailbox_quota "$@"
}
