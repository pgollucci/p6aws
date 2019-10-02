######################################################################
#<
#
# Function:
#	p6_aws_appsync_data_sources_list(api_id)
#
#  Args:
#	api_id - 
#
#>
######################################################################
p6_aws_appsync_data_sources_list() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws appsync list-data-sources --api-id $api_id "$@"
}