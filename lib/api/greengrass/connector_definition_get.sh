######################################################################
#<
#
# Function:
#	p6_aws_greengrass_connector_definition_get(connector_definition_id)
#
#  Args:
#	connector_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_connector_definition_get() {
    local connector_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-connector-definition --connector-definition-id $connector_definition_id "$@"
}