p6_aws_guardduty_invitations_decline() {
    local account_ids="$1"
    shift 1

    p6_log_or_run aws guardduty decline-invitations --account-ids $account_ids "$@"
}
