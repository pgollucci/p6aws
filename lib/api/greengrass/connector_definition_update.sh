######################################################################
#<
#
# Function:
#	p6_aws_greengrass_connector_definition_update(connector_definition_id)
#
#  Args:
#	connector_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_connector_definition_update() {
    local connector_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-connector-definition --connector-definition-id $connector_definition_id "$@"
}