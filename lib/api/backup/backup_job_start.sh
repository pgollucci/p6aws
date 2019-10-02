######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_job_start(backup_vault_name, resource_arn, iam_role_arn)
#
#  Args:
#	backup_vault_name - 
#	resource_arn - 
#	iam_role_arn - 
#
#>
######################################################################
p6_aws_backup_backup_job_start() {
    local backup_vault_name="$1"
    local resource_arn="$2"
    local iam_role_arn="$3"
    shift 3

    p6_run_write_cmd aws backup start-backup-job --backup-vault-name $backup_vault_name --resource-arn $resource_arn --iam-role-arn $iam_role_arn "$@"
}