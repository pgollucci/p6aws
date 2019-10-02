######################################################################
#<
#
# Function:
#	p6_aws_ssm_resource_data_sync_delete(sync_name)
#
#  Args:
#	sync_name - 
#
#>
######################################################################
p6_aws_ssm_resource_data_sync_delete() {
    local sync_name="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-resource-data-sync --sync-name $sync_name "$@"
}