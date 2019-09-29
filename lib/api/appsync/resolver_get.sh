######################################################################
#<
#
# Function:
#      = p6_aws_appsync_resolver_get(api_id, type_name, field_name)
#
# Arg(s):
#    api_id - 
#    type_name - 
#    field_name - 
#
#
#>
######################################################################
p6_aws_appsync_resolver_get() {
    local api_id="$1"
    local type_name="$2"
    local field_name="$3"
    shift 3

    p6_run_read_cmd aws appsync get-resolver --api-id $api_id --type-name $type_name --field-name $field_name "$@"
}