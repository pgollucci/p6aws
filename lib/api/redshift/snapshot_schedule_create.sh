p6_aws_redshift_snapshot_schedule_create() {

    p6_log_or_run aws redshift create-snapshot-schedule "$@"
}
