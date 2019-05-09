p6_aws_opsworks_volume_assign() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws opsworks assign-volume --volume-id $volume_id "$@"
}
