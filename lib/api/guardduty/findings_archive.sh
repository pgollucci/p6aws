p6_aws_guardduty_findings_archive() {
    local detector_id="$1"
    local finding_ids="$2"
    shift 2

    p6_run_write_cmd aws guardduty archive-findings --detector-id $detector_id --finding-ids $finding_ids "$@"
}
