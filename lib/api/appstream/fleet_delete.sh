p6_aws_appstream_fleet_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream delete-fleet --name $name "$@"
}
