p6_aws_guardduty_findings_feedback_update() {
    local detector_id="$1"
    local feedback="$2"
    local finding_ids="$3"
    shift 3

    p6_log_or_run aws guardduty update-findings-feedback --detector-id $detector_id --feedback $feedback --finding-ids $finding_ids "$@"
}
