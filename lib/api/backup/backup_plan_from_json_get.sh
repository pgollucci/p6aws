######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_plan_from_json_get(backup_plan_template_json)
#
#  Args:
#	backup_plan_template_json - 
#
#>
######################################################################
p6_aws_backup_backup_plan_from_json_get() {
    local backup_plan_template_json="$1"
    shift 1

    p6_run_read_cmd aws backup get-backup-plan-from-json --backup-plan-template-json $backup_plan_template_json "$@"
}