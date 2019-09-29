######################################################################
#<
#
# Function:
#      = p6_aws_appsync_api_key_delete(api_id, id)
#
# Arg(s):
#    api_id - 
#    id - 
#
#
#>
######################################################################
p6_aws_appsync_api_key_delete() {
    local api_id="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws appsync delete-api-key --api-id $api_id --id $id "$@"
}