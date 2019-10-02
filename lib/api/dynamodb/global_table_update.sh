######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_global_table_update(global_table_name, replica_updates)
#
#  Args:
#	global_table_name - 
#	replica_updates - 
#
#>
######################################################################
p6_aws_dynamodb_global_table_update() {
    local global_table_name="$1"
    local replica_updates="$2"
    shift 2

    p6_run_write_cmd aws dynamodb update-global-table --global-table-name $global_table_name --replica-updates $replica_updates "$@"
}