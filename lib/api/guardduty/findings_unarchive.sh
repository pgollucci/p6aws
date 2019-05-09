p6_aws_guardduty_findings_unarchive() {
    local detector_id="$1"
    local finding_ids="$2"
    shift 2

    p6_log_or_run aws guardduty unarchive-findings --detector-id $detector_id --finding-ids $finding_ids "$@"
}
