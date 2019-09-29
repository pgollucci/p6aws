######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_connector_definition_create()
#
#
#
#>
######################################################################
p6_aws_greengrass_connector_definition_create() {

    p6_run_write_cmd aws greengrass create-connector-definition "$@"
}