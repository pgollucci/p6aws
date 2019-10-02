######################################################################
#<
#
# Function:
#	p6_aws_appsync_graphql_api_update(api_id, name)
#
#  Args:
#	api_id - 
#	name - 
#
#>
######################################################################
p6_aws_appsync_graphql_api_update() {
    local api_id="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws appsync update-graphql-api --api-id $api_id --name $name "$@"
}