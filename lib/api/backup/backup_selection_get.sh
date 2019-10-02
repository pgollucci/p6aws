######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_selection_get(backup_plan_id, selection_id)
#
#  Args:
#	backup_plan_id - 
#	selection_id - 
#
#>
######################################################################
p6_aws_backup_backup_selection_get() {
    local backup_plan_id="$1"
    local selection_id="$2"
    shift 2

    p6_run_read_cmd aws backup get-backup-selection --backup-plan-id $backup_plan_id --selection-id $selection_id "$@"
}