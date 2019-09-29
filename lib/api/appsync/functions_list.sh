######################################################################
#<
#
# Function:
#      = p6_aws_appsync_functions_list(api_id)
#
# Arg(s):
#    api_id - 
#
#
#>
######################################################################
p6_aws_appsync_functions_list() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws appsync list-functions --api-id $api_id "$@"
}