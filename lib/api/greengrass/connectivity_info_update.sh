p6_aws_greengrass_connectivity_info_update() {
    local thing_name="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-connectivity-info --thing-name $thing_name "$@"
}
