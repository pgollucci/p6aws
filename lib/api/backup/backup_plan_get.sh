######################################################################
#<
#
# Function:
#      = p6_aws_backup_backup_plan_get(backup_plan_id)
#
# Arg(s):
#    backup_plan_id - 
#
#
#>
######################################################################
p6_aws_backup_backup_plan_get() {
    local backup_plan_id="$1"
    shift 1

    p6_run_read_cmd aws backup get-backup-plan --backup-plan-id $backup_plan_id "$@"
}