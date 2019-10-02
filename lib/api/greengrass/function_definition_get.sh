######################################################################
#<
#
# Function:
#	p6_aws_greengrass_function_definition_get(function_definition_id)
#
#  Args:
#	function_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_function_definition_get() {
    local function_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-function-definition --function-definition-id $function_definition_id "$@"
}