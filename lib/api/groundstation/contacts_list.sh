p6_aws_groundstation_contacts_list() {
    local end_time="$1"
    local start_time="$2"
    local status_list="$3"
    shift 3

    p6_run_read_cmd aws groundstation list-contacts --end-time $end_time --start-time $start_time --status-list $status_list "$@"
}
