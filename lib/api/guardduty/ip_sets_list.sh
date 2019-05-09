p6_aws_guardduty_ip_sets_list() {
    local detector_id="$1"
    shift 1

    p6_log_and_run aws guardduty list-ip-sets --detector-id $detector_id "$@"
}
