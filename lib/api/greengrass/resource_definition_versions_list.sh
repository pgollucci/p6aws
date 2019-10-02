######################################################################
#<
#
# Function:
#	p6_aws_greengrass_resource_definition_versions_list(resource_definition_id)
#
#  Args:
#	resource_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_resource_definition_versions_list() {
    local resource_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-resource-definition-versions --resource-definition-id $resource_definition_id "$@"
}