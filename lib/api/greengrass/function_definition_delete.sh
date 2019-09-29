######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_function_definition_delete(function_definition_id)
#
# Arg(s):
#    function_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_function_definition_delete() {
    local function_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass delete-function-definition --function-definition-id $function_definition_id "$@"
}