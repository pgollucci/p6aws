######################################################################
#<
#
# Function:
#	p6_aws_greengrass_resource_definition_create()
#
#>
######################################################################
p6_aws_greengrass_resource_definition_create() {

    p6_run_write_cmd aws greengrass create-resource-definition "$@"
}