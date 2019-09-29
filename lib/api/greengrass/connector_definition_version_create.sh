######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_connector_definition_version_create(connector_definition_id)
#
# Arg(s):
#    connector_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_connector_definition_version_create() {
    local connector_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-connector-definition-version --connector-definition-id $connector_definition_id "$@"
}