######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_plan_from_template_get(backup_plan_template_id)
#
#  Args:
#	backup_plan_template_id - 
#
#>
######################################################################
p6_aws_backup_backup_plan_from_template_get() {
    local backup_plan_template_id="$1"
    shift 1

    p6_run_read_cmd aws backup get-backup-plan-from-template --backup-plan-template-id $backup_plan_template_id "$@"
}