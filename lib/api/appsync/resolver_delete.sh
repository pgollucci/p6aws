######################################################################
#<
#
# Function:
#	p6_aws_appsync_resolver_delete(api_id, type_name, field_name)
#
#  Args:
#	api_id - 
#	type_name - 
#	field_name - 
#
#>
######################################################################
p6_aws_appsync_resolver_delete() {
    local api_id="$1"
    local type_name="$2"
    local field_name="$3"
    shift 3

    p6_run_write_cmd aws appsync delete-resolver --api-id $api_id --type-name $type_name --field-name $field_name "$@"
}