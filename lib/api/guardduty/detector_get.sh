p6_aws_guardduty_detector_get() {
    local detector_id="$1"
    shift 1

    p6_run_read_cmd aws guardduty get-detector --detector-id $detector_id "$@"
}
