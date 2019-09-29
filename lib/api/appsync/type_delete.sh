######################################################################
#<
#
# Function:
#      = p6_aws_appsync_type_delete(api_id, type_name)
#
# Arg(s):
#    api_id - 
#    type_name - 
#
#
#>
######################################################################
p6_aws_appsync_type_delete() {
    local api_id="$1"
    local type_name="$2"
    shift 2

    p6_run_write_cmd aws appsync delete-type --api-id $api_id --type-name $type_name "$@"
}