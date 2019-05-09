p6_aws_guardduty_threat_intel_set_get() {
    local detector_id="$1"
    local threat_intel_set_id="$2"
    shift 2

    p6_run_read_cmd aws guardduty get-threat-intel-set --detector-id $detector_id --threat-intel-set-id $threat_intel_set_id "$@"
}
