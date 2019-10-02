######################################################################
#<
#
# Function:
#	p6_aws_greengrass_resource_definition_version_get(resource_definition_id, resource_definition_version_id)
#
#  Args:
#	resource_definition_id - 
#	resource_definition_version_id - 
#
#>
######################################################################
p6_aws_greengrass_resource_definition_version_get() {
    local resource_definition_id="$1"
    local resource_definition_version_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-resource-definition-version --resource-definition-id $resource_definition_id --resource-definition-version-id $resource_definition_version_id "$@"
}