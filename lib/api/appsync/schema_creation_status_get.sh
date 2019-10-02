######################################################################
#<
#
# Function:
#	p6_aws_appsync_schema_creation_status_get(api_id)
#
#  Args:
#	api_id - 
#
#>
######################################################################
p6_aws_appsync_schema_creation_status_get() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws appsync get-schema-creation-status --api-id $api_id "$@"
}