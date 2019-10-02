######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_plan_templates_list()
#
#>
######################################################################
p6_aws_backup_backup_plan_templates_list() {

    p6_run_read_cmd aws backup list-backup-plan-templates "$@"
}