p6_aws_rds_db_instance_automated_backup_delete() {
    local dbi_resource_id="$1"
    shift 1

    p6_run_write_cmd aws rds delete-db-instance-automated-backup --dbi-resource-id $dbi_resource_id "$@"
}
