p6_aws_guardduty_invitations_delete() {
    local account_ids="$1"
    shift 1

    p6_log_or_run aws guardduty delete-invitations --account-ids $account_ids "$@"
}
