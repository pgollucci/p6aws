######################################################################
#<
#
# Function:
#	p6_aws_appsync_api_key_update(api_id, id)
#
#  Args:
#	api_id - 
#	id - 
#
#>
######################################################################
p6_aws_appsync_api_key_update() {
    local api_id="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws appsync update-api-key --api-id $api_id --id $id "$@"
}