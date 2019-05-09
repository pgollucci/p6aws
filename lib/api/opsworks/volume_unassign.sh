p6_aws_opsworks_volume_unassign() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws opsworks unassign-volume --volume-id $volume_id "$@"
}
