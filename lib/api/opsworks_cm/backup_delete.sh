######################################################################
#<
#
# Function:
#	p6_aws_opsworks_cm_backup_delete(backup_id)
#
#  Args:
#	backup_id - 
#
#>
######################################################################
p6_aws_opsworks_cm_backup_delete() {
    local backup_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks-cm delete-backup --backup-id $backup_id "$@"
}