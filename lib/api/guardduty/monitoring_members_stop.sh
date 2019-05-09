p6_aws_guardduty_monitoring_members_stop() {
    local account_ids="$1"
    local detector_id="$2"
    shift 2

    p6_log_or_run aws guardduty stop-monitoring-members --account-ids $account_ids --detector-id $detector_id "$@"
}
