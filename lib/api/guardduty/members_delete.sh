p6_aws_guardduty_members_delete() {
    local account_ids="$1"
    local detector_id="$2"
    shift 2

    p6_log_or_run aws guardduty delete-members --account-ids $account_ids --detector-id $detector_id "$@"
}
