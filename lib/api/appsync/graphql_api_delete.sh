######################################################################
#<
#
# Function:
#      = p6_aws_appsync_graphql_api_delete(api_id)
#
# Arg(s):
#    api_id - 
#
#
#>
######################################################################
p6_aws_appsync_graphql_api_delete() {
    local api_id="$1"
    shift 1

    p6_run_write_cmd aws appsync delete-graphql-api --api-id $api_id "$@"
}