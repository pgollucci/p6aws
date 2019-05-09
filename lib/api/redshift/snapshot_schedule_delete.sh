p6_aws_redshift_snapshot_schedule_delete() {
    local schedule_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-snapshot-schedule --schedule-identifier $schedule_identifier "$@"
}
