p6_aws_guardduty_detector_delete() {
    local detector_id="$1"
    shift 1

    p6_log_or_run aws guardduty delete-detector --detector-id $detector_id "$@"
}
