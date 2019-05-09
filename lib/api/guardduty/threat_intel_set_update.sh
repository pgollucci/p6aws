p6_aws_guardduty_threat_intel_set_update() {
    local detector_id="$1"
    local threat_intel_set_id="$2"
    shift 2

    p6_run_write_cmd aws guardduty update-threat-intel-set --detector-id $detector_id --threat-intel-set-id $threat_intel_set_id "$@"
}
