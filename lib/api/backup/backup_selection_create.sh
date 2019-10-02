######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_selection_create(backup_plan_id, backup_selection)
#
#  Args:
#	backup_plan_id - 
#	backup_selection - 
#
#>
######################################################################
p6_aws_backup_backup_selection_create() {
    local backup_plan_id="$1"
    local backup_selection="$2"
    shift 2

    p6_run_write_cmd aws backup create-backup-selection --backup-plan-id $backup_plan_id --backup-selection $backup_selection "$@"
}