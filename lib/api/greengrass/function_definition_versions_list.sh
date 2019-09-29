######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_function_definition_versions_list(function_definition_id)
#
# Arg(s):
#    function_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_function_definition_versions_list() {
    local function_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-function-definition-versions --function-definition-id $function_definition_id "$@"
}