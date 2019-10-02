######################################################################
#<
#
# Function:
#	p6_aws_greengrass_connector_definition_versions_list(connector_definition_id)
#
#  Args:
#	connector_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_connector_definition_versions_list() {
    local connector_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-connector-definition-versions --connector-definition-id $connector_definition_id "$@"
}