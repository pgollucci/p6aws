######################################################################
#<
#
# Function:
#	p6_aws_appsync_introspection_schema_get(api_id, format)
#
#  Args:
#	api_id - 
#	format - 
#
#>
######################################################################
p6_aws_appsync_introspection_schema_get() {
    local api_id="$1"
    local format="$2"
    shift 2

    p6_run_read_cmd aws appsync get-introspection-schema --api-id $api_id --format $format "$@"
}