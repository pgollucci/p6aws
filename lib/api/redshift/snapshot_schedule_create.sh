p6_aws_redshift_snapshot_schedule_create() {

    p6_run_write_cmd aws redshift create-snapshot-schedule "$@"
}
