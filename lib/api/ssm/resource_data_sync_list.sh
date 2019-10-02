######################################################################
#<
#
# Function:
#	p6_aws_ssm_resource_data_sync_list()
#
#>
######################################################################
p6_aws_ssm_resource_data_sync_list() {

    p6_run_read_cmd aws ssm list-resource-data-sync "$@"
}