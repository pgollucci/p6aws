######################################################################
#<
#
# Function:
#      = p6_aws_appsync_resolvers_by_function_list(api_id, function_id)
#
# Arg(s):
#    api_id - 
#    function_id - 
#
#
#>
######################################################################
p6_aws_appsync_resolvers_by_function_list() {
    local api_id="$1"
    local function_id="$2"
    shift 2

    p6_run_read_cmd aws appsync list-resolvers-by-function --api-id $api_id --function-id $function_id "$@"
}