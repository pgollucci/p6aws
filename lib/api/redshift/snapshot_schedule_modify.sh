p6_aws_redshift_snapshot_schedule_modify() {
    local schedule_identifier="$1"
    local schedule_definitions="$2"
    shift 2

    p6_log_or_run aws redshift modify-snapshot-schedule --schedule-identifier $schedule_identifier --schedule-definitions $schedule_definitions "$@"
}
