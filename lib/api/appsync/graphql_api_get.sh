######################################################################
#<
#
# Function:
#	p6_aws_appsync_graphql_api_get(api_id)
#
#  Args:
#	api_id - 
#
#>
######################################################################
p6_aws_appsync_graphql_api_get() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws appsync get-graphql-api --api-id $api_id "$@"
}