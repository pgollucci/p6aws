p6_aws_guardduty_members_get() {
    local account_ids="$1"
    local detector_id="$2"
    shift 2

    p6_log_and_run aws guardduty get-members --account-ids $account_ids --detector-id $detector_id "$@"
}
