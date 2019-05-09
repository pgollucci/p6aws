p6_aws_guardduty_filters_list() {
    local detector_id="$1"
    shift 1

    p6_run_read_cmd aws guardduty list-filters --detector-id $detector_id "$@"
}
