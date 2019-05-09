p6_aws_guardduty_sample_findings_create() {
    local detector_id="$1"
    shift 1

    p6_log_or_run aws guardduty create-sample-findings --detector-id $detector_id "$@"
}
