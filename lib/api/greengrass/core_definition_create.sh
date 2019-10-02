######################################################################
#<
#
# Function:
#	p6_aws_greengrass_core_definition_create()
#
#>
######################################################################
p6_aws_greengrass_core_definition_create() {

    p6_run_write_cmd aws greengrass create-core-definition "$@"
}