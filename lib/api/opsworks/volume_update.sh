p6_aws_opsworks_volume_update() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws opsworks update-volume --volume-id $volume_id "$@"
}
