######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_function_definition_create()
#
#
#
#>
######################################################################
p6_aws_greengrass_function_definition_create() {

    p6_run_write_cmd aws greengrass create-function-definition "$@"
}