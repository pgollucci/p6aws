p6_aws_directconnect_interconnect_delete() {
    local interconnect_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect delete-interconnect --interconnect-id $interconnect_id "$@"
}
