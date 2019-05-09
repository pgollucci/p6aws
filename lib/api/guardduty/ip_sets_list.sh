p6_aws_guardduty_ip_sets_list() {
    local detector_id="$1"
    shift 1

    p6_run_read_cmd aws guardduty list-ip-sets --detector-id $detector_id "$@"
}
