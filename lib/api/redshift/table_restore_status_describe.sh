p6_aws_redshift_table_restore_status_describe() {

    p6_run_read_cmd aws redshift describe-table-restore-status "$@"
}
