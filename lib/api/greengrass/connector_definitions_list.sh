######################################################################
#<
#
# Function:
#	p6_aws_greengrass_connector_definitions_list()
#
#>
######################################################################
p6_aws_greengrass_connector_definitions_list() {

    p6_run_read_cmd aws greengrass list-connector-definitions "$@"
}