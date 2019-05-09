p6_aws_guardduty_from_master_account_disassociate() {
    local detector_id="$1"
    shift 1

    p6_log_or_run aws guardduty disassociate-from-master-account --detector-id $detector_id "$@"
}
