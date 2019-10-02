######################################################################
#<
#
# Function:
#	p6_aws_appsync_type_create(api_id, definition, format)
#
#  Args:
#	api_id - 
#	definition - 
#	format - 
#
#>
######################################################################
p6_aws_appsync_type_create() {
    local api_id="$1"
    local definition="$2"
    local format="$3"
    shift 3

    p6_run_write_cmd aws appsync create-type --api-id $api_id --definition $definition --format $format "$@"
}