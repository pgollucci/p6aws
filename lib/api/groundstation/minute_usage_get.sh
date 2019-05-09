p6_aws_groundstation_minute_usage_get() {
    local month="$1"
    local year="$2"
    shift 2

    p6_run_read_cmd aws groundstation get-minute-usage --month $month --year $year "$@"
}
