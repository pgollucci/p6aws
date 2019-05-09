p6_aws_guardduty_members_get() {
    local detector_id="$1"
    local account_ids="$2"
    shift 2

    p6_run_read_cmd aws guardduty get-members --detector-id $detector_id --account-ids $account_ids "$@"
}
