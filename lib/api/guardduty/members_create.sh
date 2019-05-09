p6_aws_guardduty_members_create() {
    local account_details="$1"
    local detector_id="$2"
    shift 2

    p6_log_or_run aws guardduty create-members --account-details $account_details --detector-id $detector_id "$@"
}
