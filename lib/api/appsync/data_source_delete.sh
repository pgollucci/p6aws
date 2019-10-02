######################################################################
#<
#
# Function:
#	p6_aws_appsync_data_source_delete(api_id, name)
#
#  Args:
#	api_id - 
#	name - 
#
#>
######################################################################
p6_aws_appsync_data_source_delete() {
    local api_id="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws appsync delete-data-source --api-id $api_id --name $name "$@"
}