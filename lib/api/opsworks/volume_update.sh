p6_aws_opsworks_volume_update() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-volume --volume-id $volume_id "$@"
}
