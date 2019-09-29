######################################################################
#<
#
# Function:
#      = p6_aws_appsync_resolvers_list(api_id, type_name)
#
# Arg(s):
#    api_id - 
#    type_name - 
#
#
#>
######################################################################
p6_aws_appsync_resolvers_list() {
    local api_id="$1"
    local type_name="$2"
    shift 2

    p6_run_read_cmd aws appsync list-resolvers --api-id $api_id --type-name $type_name "$@"
}