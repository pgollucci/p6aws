######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_selections_list(backup_plan_id)
#
#  Args:
#	backup_plan_id - 
#
#>
######################################################################
p6_aws_backup_backup_selections_list() {
    local backup_plan_id="$1"
    shift 1

    p6_run_read_cmd aws backup list-backup-selections --backup-plan-id $backup_plan_id "$@"
}