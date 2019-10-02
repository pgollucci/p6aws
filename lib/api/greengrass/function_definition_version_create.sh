######################################################################
#<
#
# Function:
#	p6_aws_greengrass_function_definition_version_create(function_definition_id)
#
#  Args:
#	function_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_function_definition_version_create() {
    local function_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-function-definition-version --function-definition-id $function_definition_id "$@"
}