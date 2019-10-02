######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_table_from_backup_restore(target_table_name, backup_arn)
#
#  Args:
#	target_table_name - 
#	backup_arn - 
#
#>
######################################################################
p6_aws_dynamodb_table_from_backup_restore() {
    local target_table_name="$1"
    local backup_arn="$2"
    shift 2

    p6_run_write_cmd aws dynamodb restore-table-from-backup --target-table-name $target_table_name --backup-arn $backup_arn "$@"
}