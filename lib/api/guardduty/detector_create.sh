p6_aws_guardduty_detector_create() {
    local enable="$1"
    shift 1

    p6_log_or_run aws guardduty create-detector --enable $enable "$@"
}
