p6_aws_docdb_pending_maintenance_actions_describe() {

    p6_run_read_cmd aws docdb describe-pending-maintenance-actions "$@"
}
