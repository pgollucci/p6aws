######################################################################
#<
#
# Function:
#	p6_aws_appsync_api_key_create(api_id)
#
#  Args:
#	api_id - 
#
#>
######################################################################
p6_aws_appsync_api_key_create() {
    local api_id="$1"
    shift 1

    p6_run_write_cmd aws appsync create-api-key --api-id $api_id "$@"
}