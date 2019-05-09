p6_aws_greengrass_connectivity_info_update() {
    local thing_name="$1"
    shift 1

    p6_log_or_run aws greengrass update-connectivity-info --thing-name $thing_name "$@"
}
