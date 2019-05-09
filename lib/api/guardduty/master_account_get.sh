p6_aws_guardduty_master_account_get() {
    local detector_id="$1"
    shift 1

    p6_log_and_run aws guardduty get-master-account --detector-id $detector_id "$@"
}
